/*
 _____ _____ _____     __ __ ___ 
|  |  |  |  |   __|   /  (  ) __)
|     |     |__   |  (  O )( (_ \
|__|__|__|__|_____|   \__(__)___/

*/

//*************************************************************
// required

require('dotenv').config();

const gulp = require('gulp');  
const del = require('del');
const ignore = require('gulp-ignore');
const rename = require("gulp-rename");
const awspublish = require('gulp-awspublish');
 
//*************************************************************
// AWS

const AWS_ACCESS_KEY_ID = process.env.BUCKETEER_AWS_ACCESS_KEY_ID;
const AWS_SECRET_ACCESS_KEY = process.env.BUCKETEER_AWS_SECRET_ACCESS_KEY;
const AWS_BUCKET_NAME = process.env.BUCKETEER_BUCKET_NAME;
const AWS_REGION = process.env.BUCKETEER_AWS_REGION || 'us-east-1';

let publisher = awspublish.create({
	region: AWS_REGION,
	params: {
		Bucket: AWS_BUCKET_NAME
	},
	accessKeyId: AWS_ACCESS_KEY_ID,
	secretAccessKey: AWS_SECRET_ACCESS_KEY
});

//*************************************************************
// tasks

gulp.task('pdf', function() {
	return gulp.src(['**/*.pdf'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/pdf'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/pdf/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('txt', function() {
	return gulp.src(['**/*.txt'])
		.pipe(ignore.exclude('node_modules/**'))  // some modules include .txt files
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/txt'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/txt/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('csv', function() {
	return gulp.src(['**/*.csv'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/csv'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/csv/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('xls', function() {
	return gulp.src(['**/*.xls'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/xls'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/xls/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('ppt', function() {
	return gulp.src(['**/*.ppt'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/ppt'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/ppt/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('mp3', function() {
	return gulp.src(['**/*.mp3'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/mp3'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/mp3/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('wmv', function() {
	return gulp.src(['**/*.wmv'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/wmv'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/wmv/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('zip', function() {
	return gulp.src(['**/*.zip'])
		.pipe(ignore.exclude('assets/**'))
		//.pipe(gulp.dest('assets/zip'))
		.pipe(rename(function (path) {
			path.dirname = 'assets/zip/' + path.dirname;
		}))		
		.pipe(publisher.publish())
		.pipe(publisher.cache())
		.pipe(awspublish.reporter());
});

gulp.task('assets', ['pdf', 'txt', 'csv', 'xls', 'ppt', 'mp3', 'wmv', 'zip']);

//*************************************************************

gulp.task('default', ['assets']);
