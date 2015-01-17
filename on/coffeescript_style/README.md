# My CoffeeScript style

This page describes the way I like to write
[CoffeeScript](http://coffeescript.org/), when given the choice.

Although this is my preferred way of writing code, I am happy to follow
existing standards when working in teams.
I have found [EditorConfig](http://editorconfig.org/) useful for this.


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

Since I use Literate CoffeeScript, I write all my comments as Markdown
paragraphs.
This gives me the same character width (72) for all comments.

I only use indented `#` comments for code that I want temporarily
ignored.


## Indentation

Since CoffeeScript uses indentation for scope, it is important to use
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
over camel-case for everything.

If variable names are made of multiple words, and words are usually
separated by spaces, then swapping the space or an underscore seems
better than joining them together then trying to figure out if you drop
the case on an acronym.

	XML_to_JSON > XmlToJson
	xml_to_json > XMLToJSON
