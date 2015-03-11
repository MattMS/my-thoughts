# Why CoffeeScript?

Some of the reasons I prefer [CoffeeScript](http://coffeescript.org/)
over Javascript.


## Less characters

This may not matter as much with a properly configured editor, but I
still like the reduced clutter of unnecessary characters.

No more blocks of closing braces/brackets!


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

The colons are still necessary otherwise those would be function calls.


### Enlightened existential expressions

	if my_obj?
		alert 'It exists!'

Or:

	alert 'It exists!' if my_obj?

Instead of:

	if (typeof my_obj !== "undefined" && my_obj !== null) {
		alert("It exists!");
	}


### Slicing arrays

	middle = numbers[1..-2]
	another_middle = numbers[1...-1]
	same = middle is another_middle

Three dots has an exlusive end point.


## ES6 already

The syntax is different to ES6, but the functionality is similar.


### Arrow functions

Simpler function definitions makes for nicer callback code.

	add = (a, b)-> a + b


### Classes

	class Person
		constructor: (@name, @pos)->

	class Player extends Person
		move: (by)->
			@pos.x += by.x
			@pos.y += by.y

	me = new Player "Matt",
		x: 0
		y: 0

	me.move
		x: 10
		y: 0


### Multi-line and template strings

	name = "world"

	message = "Hello #{name},
	How are you?"

	html = """
	<p class="alert">#{message}</p>
	"""

No need to switch to backticks!
But they must be double quotes instead of single.


## Fancier functions

### Default values

	add = (start, amount=1)->
		start + amount


### Splats

	blah = (many_blahs...)->
		alert one_blah for one_blah in many_blahs


## Free returns

Functions will return the value of the last expression, even if it is
wrapped in flow control statements.

	is_it_even = (number)->
		if number % 2
			'nope'
		else
			'yeah'

	alert is_it_even 3


Returning an object is simpler too.

	new_player = (name)->
		health: 255
		money: 10
		name: name


## Loops

### Comprehensions

	doubles = (num * 2 for num in [1..10])

	countdown = (num for num in [10..1])


### Object looping

	scores =
		anna: 12
		bill: 6
		charlie: 23

	messages = for name, score of scores
		"#{name} got #{score}"


### While loops

	if studying_economics
		buy() while supply > demand
		sell() until supply > demand


## Reads nicely

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
