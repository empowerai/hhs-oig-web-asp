/*
 _____ _____ _____     __ __ ___ 
|  |  |  |  |   __|   /  (  ) __)
|     |     |__   |  (  O )( (_ \
|__|__|__|__|_____|   \__(__)___/

*/

//*************************************************************

const express = require("express");
const ssi = require('connect-ssi');

const helmet = require('helmet');
const cors = require('cors');

const path = require('path');
const fsr = require('file-stream-rotator');
const mkdirp = require('mkdirp');
const morgan = require('morgan');

//*************************************************************

let app = express();

app.use(cors());
app.use(helmet());

// **********************************************************

let logDirectory = path.join(__dirname,'/log');
    
mkdirp(logDirectory);

let accessLogStream = fsr.getStream({
    filename: logDirectory + '/hhs-oig-web-asp-%DATE%.log',
    frequency: 'daily',
    verbose: false
});

app.use(morgan('combined', {stream: accessLogStream}));

//*************************************************************

app.use(ssi({
    ext: '.asp',
	baseDir: __dirname
}));

app.use(express.static(__dirname));

//*************************************************************

var server = app.listen(process.env.PORT || 3001, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('\n  listening at http://%s:%s', host, port);

});

//*************************************************************
