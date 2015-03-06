# Why CoffeeScript

Some of the reasons I prefer [CoffeeScript](http://coffeescript.org/)
over Javascript.


## Less characters

This may not matter as much with a properly configured editor, but I
still like the reduced clutter of unnecessary characters.

I cringe a little whenever I see a block of closing braces/brackets.


### Arrow functions

Simpler function definitions makes for nicer callback code.

	add = (a, b)-> a + b

I know that
[ES6 has arrow functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions),
but this works now!


### Arrays and objects

Only add commas and braces if you want to.

	my_arr = [
		1
		'b'
		3
	]

	my_obj =
		a: 1
		b:
			c: ->
				2
		d: 3


### Expression and returns

Functions will return the value of the last expression, even if it is
wrapped in flow control statements.

	is_it_even = (number)->
		if number % 2
			'nope'
		else
			'yeah'

	alert is_it_even 3


### Simple loops

	foods = ['broccoli', 'spinach', 'chocolate']
	eat food for food in foods when food isnt 'chocolate'


### Words over symbols

- `is` for `===`. `isnt` for `!==`.

- `on`/`yes` for `true`. `off`/`no` for `false`.

- `not` for `!`.

- `and` for `&&`. `or` for `||`.

They read nicer and can avoid some annoying errors.

You can still use all the symbols if you like.
Although `==` is changed to `===`.


## Cool people like it

- [Atom editor](https://github.com/atom/atom)

- [Dropbox](https://blogs.dropbox.com/tech/2012/09/dropbox-dives-into-coffeescript/)

- [GitHub](https://github.com/styleguide/javascript)

- [Hubot](https://hubot.github.com/)

- [Trello](https://trello.com/)

- [and many others](https://github.com/jashkenas/coffeescript/wiki/In%20The%20Wild)
