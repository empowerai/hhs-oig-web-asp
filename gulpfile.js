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
const gulpIgnore = require('gulp-ignore');

//*************************************************************
// tasks

gulp.task('pdf', function() {
	return gulp.src(['**/*.pdf'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/pdf'));
});

gulp.task('txt', function() {
	return gulp.src(['**/*.txt'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/txt'));
});

gulp.task('csv', function() {
	return gulp.src(['**/*.csv'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/csv'));
});

gulp.task('xls', function() {
	return gulp.src(['**/*.xls'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/xls'));
});

gulp.task('ppt', function() {
	return gulp.src(['**/*.ppt'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/ppt'));
});

gulp.task('mp3', function() {
	return gulp.src(['**/*.mp3'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/mp3'));
});

gulp.task('wmv', function() {
	return gulp.src(['**/*.wmv'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/wmv'));
});

gulp.task('zip', function() {
	return gulp.src(['**/*.zip'])
		.pipe(gulpIgnore.exclude('assets/**'))
		.pipe(gulp.dest('assets/zip'));
});

gulp.task('assets', ['pdf', 'txt', 'csv', 'xls', 'ppt']);

gulp.task('default', ['assets']);
