# My CoffeeScript style

Status: [readable](../status/).

This page describes the way I like to write
[CoffeeScript](http://coffeescript.org/).

Although this is my preferred style of writing, if I need to follow
other standards, I have found [EditorConfig](http://editorconfig.org/)
to be useful.


## Keep only what you need

I try to remove as many unnecessary (visible) characters as possible.

	my_val = $('#my_input').val()

Can be written as:

	my_val = $ '#my_input'
	.val()

Although this only removes a pair of brackets and increases the vertical
space, I find it easier to read.

Even further:

	my_val = $ '#my_input'
	.css 'border', 0
	.data 'my_value', 12
	.val()

This does remove `my_val =` from `.val()`, which can be confusing.


## Blank lines

I have a single blank line between related statements and 2 blank lines
between blocks of related statements.

	a = my_function
		a: 1
		b: 2

	b = 2

Since I prefer to write
[Literate CoffeeScript](http://coffeescript.org/#literate),
I usually have 2 blank lines before each Markdown heading.


## Brackets and commas

I use as few brackets and commas as possible.
It seems less cluttered and avoids the blocks of closing brackets.

	my_obj =
		a: 1
		b: 2

The exception to this is square brackets, because they are necessary to
define an array.

	my_list = [
		'a'
		1
		'b'
		2
	]


## Comments

Literate CoffeeScript lets me write my comments as Markdown paragraphs.
This gives me the same character width (72) for all comments.
It also allows headings and other HTML features.

I only use indented `#` comments for code that I want temporarily
ignored.


## Indentation

CoffeeScript uses indentation for scope and it is important to use
the same type through a file.

I prefer using [tabs instead of spaces](../tabs_vs_spaces/).

Many people prefer to use 2 spaces for indentation, but I find this
difficult to visually match up blocks of code that extend over many
lines.


## Spaces

I never include more than a single space between anything.

The only places I avoid spaces are when calling a function without
parameters, or when assigning values in an object.

	my_function()

	my_obj = a: 1

I avoid trailing spaces because I have found that some editors remove
them anyway.


## Variable names

I like to use [snake-case](https://en.wikipedia.org/wiki/Snake_case)
over [camel-case](http://en.wikipedia.org/wiki/CamelCase) for all
variable and function names.

If variable names are made of multiple words, and words are usually
separated by spaces, then swapping the space for an underscore seems
better than joining them together then trying to figure out if you drop
the case on an acronym.

	XML_to_JSON > XMLToJSON
	xml_to_json > XmlToJson

I follow this same rule when hyphens are allowed, such as file names and
CSS classes.
