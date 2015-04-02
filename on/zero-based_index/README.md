# Zero-based indexing

Status: [started](../status/).

Most programming languages have stuck with array/list/string indexing
starting at zero.

So you access the first item like this:

	first = items[0]

And loop over items like this:

	i = 1
	while i < 4:
		print(items[i])
		i += 1

Which prints out the 2nd to 4th items (inclusive).

This is hardly intuitive and I even ran that code to be sure what that
loop actually printed.

We can thank low level languages like
[C](https://en.wikipedia.org/wiki/C_%28programming_language%29)
for this.

There have been a few languages that have seen the light and moved to
one-based indexing, like [Lua](https://www.lua.org/).
Unfortunately, my current favourites (Python and CoffeeScript) have
stuck with the crowd.

I cannot see this changing any time soon, so I decided to have this rant
to show that at least one person still has hope.
