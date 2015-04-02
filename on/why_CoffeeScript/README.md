# Why CoffeeScript?

Status: [readable](../status/).

Some of the reasons I prefer [CoffeeScript](http://coffeescript.org/)
over Javascript.


## Why bother?

To learn CoffeeScript, you need to know Javascript.
But once you know Javascript, why should you bother learning
CoffeeScript?

If you are using any other
[preprocessor](http://en.wikipedia.org/wiki/Preprocessor)
for CSS or HTML, then you should consider CoffeeScript for the same
reasons you considered them.

- Gives [syntactic sugar](https://en.wikipedia.org/wiki/Syntactic_sugar)
  for most operations.
  Less code to read and less chances of errors.

- Produces better Javascript than most people write, with proper
  variable scoping and equality tests.

- Can be wrapped in [Markdown](http://daringfireball.net/projects/markdown/).
  So code and comments can be grouped by standard HTML headings.

- Similar to [Jade](http://jade-lang.com/)
  and [Stylus](http://learnboost.github.io/stylus/).


## Less characters, less clutter

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

Or

	alert 'It exists!' if my_obj?

Instead of

	if (typeof my_obj !== "undefined" && my_obj !== null) {
		alert("It exists!");
	}


### Slicing arrays

	middle = numbers[1..-2]
	another_middle = numbers[1...-1]
	same = middle is another_middle

Three dots makes the end point exlusive.


## ES6 already

The syntax is different to ES6, but functionality is the same.


### Arrow functions

Simpler function definitions makes for nicer callback code.

	add = (a, b)-> a + b


### Classes

Prefixing arguments with `@` sets them as an instance value.
Same as `Person(name) {this.name = name;}`.

	class Person
		constructor: (@name, @pos)->

	class Player extends Person
		move: (by)->
			@pos.x += by.x
			@pos.y += by.y

	me = new Player "Matt",
		x: 0
		y: 0


### Generators

Use `yield` without needing `function*`!
This needs to be run in an ES6 interpreter.

	ps = ->
		num = 0
		loop
			num += 1
			yield num * num
		return


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

Not having to write `function` everywhere makes code simpler.

	$ '#my_element'
	.on 'click', (e)->
		e.preventDefault()


### Chaining function calls

Starting a line with a dot will close the call from the previous line.

	$ '#my_element'
	.css 'color', red
	.show()

But CoffeeScript accepts Javascript syntax too, if you prefer that.

	$('#my_element').css('color', red).show()


### Embedding function calls

	nine = square add 1, 2

Gives

	var nine = square(add(1, 2));


### Default values

	add = (start, amount=1)->
		start + amount


### Free returns

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


### Objects for arguments

Passing objects as arguments works the same as assignment.

	$ '#my_element'
	.data
		a: 1
		b: 2

You need a comma if there are arguments before the object.

	me = new_bot 'Matt',
		health: 12
		money: 3

Multiple objects can be passed, as long as there is a comma between
them.

	my_object = my_object_combiner
		a: 1
		b: 2
	,
		c: 3
		d: 4


### Variable arguments

	blah = (many_blahs...)->
		alert one_blah for one_blah in many_blahs


## Loops

### Comprehensions

These create arrays with values from the loops.

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

Nicer to read and avoids annoying JS errors.

You can still use all the symbols if you like.
Although `==` is changed to `===`.


## Cool people like it

It remains in the top 10 most depended-upon packages on
[NPM](https://www.npmjs.com/).

- [Atom editor](https://github.com/atom/atom)

- [Dropbox](https://blogs.dropbox.com/tech/2012/09/dropbox-dives-into-coffeescript/)

- [GitHub](https://github.com/styleguide/javascript)

- [Hubot](https://hubot.github.com/)

- [Trello](https://trello.com/)

- [and many others](https://github.com/jashkenas/coffeescript/wiki/In%20The%20Wild)
