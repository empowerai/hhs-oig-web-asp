/*
 _____ _____ _____     __ __ ___ 
|  |  |  |  |   __|   /  (  ) __)
|     |     |__   |  (  O )( (_ \
|__|__|__|__|_____|   \__(__)___/

*/

//*************************************************************
// required

const gulp = require('gulp');  
const del = require('del');

//*************************************************************
// tasks

gulp.task('pdf', function() {
	return gulp.src('**/*.pdf')
		.pipe(gulp.dest('assets/pdf'));
});

gulp.task('default', ['pdf']);
