# My CoffeeScript style

This page describes the way I like to write
[CoffeeScript](http://coffeescript.org/).

You should note that I have not included "guide" in the title.
That is because I do not recommend this as something others should
follow.
It is just the way I like to write because it makes sense to me.

If you need a standard to follow then you could use the
[coffeescript-style-guide](https://github.com/polarmobile/coffeescript-style-guide)
by polarmobile (which I just found by a quick Google search)
and/or use [EditorConfig](http://editorconfig.org/).

So, this is not the reference you are looking for, but it may be of
interest purely for another perspective.


## Blank lines

I like to use a single blank line between statements that are related
and 2 blank lines to make a block of statements stand out.

I find that as a file increases in content, I will insert more blank
lines to make it easier to scan.

Since I prefer to write
[Literate CoffeeScript](http://coffeescript.org/#literate),
I usually have 2 blank lines before each Markdown heading.


## Brackets and commas

I use as few brackets and commas as possible!
It seems less cluttered and you do not have to scroll over the closing
brackets of a block of code.

	my_obj =
		a: 1
		b: 2

The except to this is square brackets, because they are necessary to
define a list.

	my_list = [
		'a'
		1
		'b'
		2
	]


## Comments

Since I use Literate CoffeeScript, I write all my comments as Markdown
paragraphs and do not have any indented `#` comments, except for code
that I want to temporarily ignore.


## Indentation

Since CoffeeScript uses indentation for scope, it is important to use
the same type through a file.

[I prefer tabs over spaces](../tabs_vs_spaces/) for the various reasons
I mention on the linked page.

I know that many people prefer to use 2 spaces for indentation, but I
find this difficult to match up blocks of code where the indentation
varies across many lines.


## Spaces

I never include more than a single space between anything.

The only places I avoid spaces are when calling a function without
parameters, or when doing an object item assignment.

	my_function()

	my_obj = a: 1

I avoid trailing spaces because I have found that some editors remove
them anyway.


## Variable names

I like to use [snake-case](https://en.wikipedia.org/wiki/Snake_case)
over camel case for everything.

If variable names are made of multiple words, and words are usually
separated by spaces, then swapping the space or an underscore seems
better than joining them together then trying to figure out if you drop
the case on an acronym.

	XML_to_JSON > XmlToJson
	xml_to_json > XMLToJSON
