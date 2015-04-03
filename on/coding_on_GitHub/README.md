# Coding on GitHub

Status: [readable](../status/).

These are the things I look for in projects on GitHub.

I also aim to follow these on my own projects.


## README

Always have a README file, even if it is only a single sentence or a
list of TODO notes.

If a project does not have a README then I am less likely to read
further, because it already feels incomplete.

See: [Readme Driven Development by Tom Preston-Werner](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)


### Project summary

A short description of why someone would want to use this project.


### Installation instructions

If installation is a single step, like `npm install coffee-script`, then
that is perfect to include in the README, to show how simple it is.

Otherwise you should add a link to more detailed steps if they are
complex.


### Requirements

Include requirements, like Operating System, language and libraries,
even if they seem obvious.

Projects using [NPM](https://www.npmjs.com/) will include a
`package.json` that specifies the requirements, but the README should
still state this.


### Examples!!!

I stopped myself from emphasising that more, but examples are the most
important thing for me.

They show me the elegant syntax of your library and help me imagine how
I could use it.


## LICENSE

Every project should have a license, otherwise it makes it difficult for
people to know if they can use the project how they would like.

GitHub have a [choose a license](http://choosealicense.com/) site that
can help you find one that covers what you want.

I tend to pick the [MIT](https://en.wikipedia.org/wiki/MIT_License)
license because it seems to be the most open.


## CONTRIBUTING

The issue and pull request system on GitHub is great!

A nice feature is by including a CONTRIBUTING file in the root folder,
it will be shown above the create issue form.

This is perfect for explaining the format you prefer when specifying
issues.

See: [Contributing Guidelines](https://github.com/blog/1184-contributing-guidelines)