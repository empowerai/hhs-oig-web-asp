/*
 _____ _____ _____     __ __ ___ 
|  |  |  |  |   __|   /  (  ) __)
|     |     |__   |  (  O )( (_ \
|__|__|__|__|_____|   \__(__)___/

*/

//*************************************************************

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

const AWS_ACCESS_KEY =  process.env.AWS_ACCESS_KEY;
const AWS_SECRET_KEY = process.env.AWS_SECRET_KEY;
const AWS_REGION = process.env.AWS_REGION;
const AWS_S3_BUCKET = process.env.AWS_S3_BUCKET;

AWS.config.update({
    accessKeyId: AWS_ACCESS_KEY,
    secretAccessKey: AWS_SECRET_KEY,
    region: AWS_REGION
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

app.use('*.pdf', function (req, res, next) {

	let file = req.originalUrl.substr(1);
	//console.log('file : ' + file);   

	let params = {
		Bucket: AWS_S3_BUCKET, 
		Key: file
	};

	s3.getObject(params, function(err, data) {
		if (err) {
			console.error(err, err.stack); 
			res.redirect(404, '/errors/404.asp');				
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
	res.redirect(404, '/errors/404.asp');
});

//*************************************************************
// server

var server = app.listen(process.env.PORT || 3001, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('\n  listening at http://%s:%s', host, port);

});

//*************************************************************
