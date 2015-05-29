gulp    = require 'gulp'
less    = require 'gulp-less'
webserver = require 'gulp-webserver'

gulp.task 'server',  ->
  gulp
    .src 'site'
    .pipe webserver
      host: '0.0.0.0'
      livereload: true
      open: true

gulp.task 'less', ->
  gulp
    .src './less/site.less'
    .pipe less()
    .pipe gulp.dest('./site/assets/styles')

gulp.task 'watch', ->
  gulp.watch ['./less/**/*.less'], ['less']

gulp.task 'default', ['server', 'watch']
