# Tabs vs spaces

Status: [readable](../status/).

It is almost a requirement as a developer to pick a side in the tabs vs spaces war.

I side with tabs.


## Let me convince you

Or more accurately: why I like tabs more.


### One key indent/unindent

Add with the tab key and remove with backspace.

One benefit of this is it works in even the most basic editors.


### Indentation errors

The more spaces you use for indentation, the greater the chance you will accidentally add an extra space that will break things.

This is an annoyance for most languages, but can cause syntax errors for whitespace-significant languages like Coffee-Script and Python.


### Smaller file size

I decided to start with the obvious one, even though it is not such a
big deal with cheap and fast storage.

It is still a point that spaces will always have against them.


### Viewer-defined indent width

The unknown indent width is called a disadvantage, probably due to
losing the certainty of a fixed width.
But sticking to a fixed width has other problems (URL > 80 chars).

Letting a user pick the indent size seems like a nice extra to me.


## Places tabs have lost

Unfortunately there are some places that tabs are banned and spaces have
claimed victory.


### Yaml

I choose Yaml for any structured data I can, so I have been forced to
use spaces, as tabs are invalid syntax.

Initially I kept to single space indent, with more vertical space.
But now I have moved to 2 space indent, and less vertical space.


### Web forms

Since tab jumps to the next field, I am stuck with spaces.

Usually the code I write in forms is only a few lines, so I use
single-space indent.


## That said

It actually does not really matter which you choose.
It is easy enough to find-replace on load and reverse on save.

The more important point is the content you are writing!


## Other advocates

- Lea Verou: [Why tabs are clearly superior](http://lea.verou.me/2012/01/why-tabs-are-clearly-superior/ "2012-01-17")

- Sindre Sorhus: [xo: JavaScript happiness style linter](https://github.com/sindresorhus/xo#space)
