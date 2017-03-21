/*
 _____ _____ _____     __ __ ___ 
|  |  |  |  |   __|   /  (  ) __)
|     |     |__   |  (  O )( (_ \
|__|__|__|__|_____|   \__(__)___/

*/

//*************************************************************
// required

require('dotenv').config();

const express = require('express');
const ssi = require('connect-ssi');

const helmet = require('helmet');
const cors = require('cors');

const path = require('path');
const fsr = require('file-stream-rotator');
const mkdirp = require('mkdirp');
const morgan = require('morgan');

const AWS = require('aws-sdk');

//*************************************************************
// AWS

const AWS_ACCESS_KEY_ID = process.env.BUCKETEER_AWS_ACCESS_KEY_ID;
const AWS_SECRET_ACCESS_KEY = process.env.BUCKETEER_AWS_SECRET_ACCESS_KEY;
const AWS_BUCKET_NAME = process.env.BUCKETEER_BUCKET_NAME;

AWS.config.update({
    accessKeyId: AWS_ACCESS_KEY_ID,
    secretAccessKey: AWS_SECRET_ACCESS_KEY
});

const s3 = new AWS.S3();

//*************************************************************
// app

let app = express();

app.use(cors());
app.use(helmet());

// **********************************************************
// log

let logDirectory = path.join(__dirname,'/log');
    
mkdirp(logDirectory);

let accessLogStream = fsr.getStream({
    filename: logDirectory + '/hhs-oig-web-asp-%DATE%.log',
    frequency: 'daily',
    verbose: false
});

app.use(morgan('combined', {stream: accessLogStream}));

//*************************************************************
// middleware

app.use(ssi({
    ext: '.asp',
	baseDir: __dirname
}));

app.use(['*.pdf', '*.txt', '*.csv', '*.xls', '*.ppt'], function (req, res, next) {

	let file = req.originalUrl;
	let ext = path.extname(file).substring(1);
	let key = 'assets/'+ ext + file;
	
	//console.log('file : ' + file);   
	//console.log('ext : ' + ext); 
	console.log('key : ' + key); 

	let params = {
		Bucket: AWS_BUCKET_NAME, 
		Key: key
	};

	s3.getObject(params, function(err, data) {
		if (err) {
			//console.error(err, err.stack); 
			//res.redirect(404, '/errors/404.asp');
			res.redirect('/errors/404.asp');					
		}
	 	else {     
 			//console.log(data);   
 			res.set('Content-Type', data.ContentType)
 				.send(data.Body);
	 	}      
	});

});

app.use(express.static(__dirname));

app.get('*', function(req, res){
	//res.redirect(404, '/errors/404.asp');
	res.redirect('/errors/404.asp');	
});

//*************************************************************
// server

var server = app.listen(process.env.PORT || 3001, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('\n  listening at http://%s:%s', host, port);

});

//*************************************************************
