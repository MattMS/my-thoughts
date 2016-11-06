gulp = require 'gulp'

gulp_marked = require 'gulp-marked'

gulp_rename = require 'gulp-rename'

gulp_transform = require 'gulp-transform'


get_page_dom = require './get_page_dom'


paths = [
	'./README.md'
	'./on/**/README.md'
]

rename_transform = gulp_rename (path)->
	path.basename = 'index'
	path.extname = '.html'
	path

# `gulp-transform` supports returning a Buffer, Promise, or String.

wrap_html_transform_callback = (content, file)->
	dom = get_page_dom content

	"<!DOCTYPE html>#{dom.outerHTML}"

wrap_html_transform = gulp_transform wrap_html_transform_callback, encoding: 'utf8'


gulp.task 'default', ->
	gulp.src paths, base: './'
	.pipe gulp_marked()
	.pipe wrap_html_transform
	.pipe rename_transform
	.pipe gulp.dest './'
