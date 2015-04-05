# Describing projects

Status: [readable](../status/).

Some suggestions on ways to gather and organise information from clients
about projects.

Each of these suggestions should work independently from each other, so
feel free to pick and change what works for different projects.


## Question feature requests

This *does not* mean becoming defensive about changes, it simply means
trying to understand why a client wants something done.

Clients may request features because they are unaware of alternatives.

Requests may also be based on existing work-flows that will change with
the new product, making the feature unnecessary.

Discovering why a client wants a feature will help decide if and how it
should be implemented.


## Define user types

Before deciding on features, it is helpful to know the types of users
that want them.

Here are some of the possible user types and their main goals for a
messaging application:

- All users want to send and receive messages.

- Group managers want to add and remove users from their group.

- Account managers want to create new accounts and reset passwords.

- System admins want to know the usage and growth rate of storage so
  they know when they need to increase the capacity.

You can even give names to the user types to make it easier to refer to
them, like Gary the group manager, Anna the account manager and Sam the
system admin.


## Use stories to describe features

Features of an application can be described as stories:

> As a group manager,
> I want to add a user to my group,
> so that they can receive group messages.

The usual structure is "As a ? I want ? so that ?".
This specifies the type of user, the feature they want and the reason
for it.

The "so that" part is used to justify why a person wants a feature.
This may expose issues with the feature that lead to a better solution.


## Decide importance of features

Features should be given an importance in relation to the project.

- "Must have" means the project fails without them.

- "Should have" will not stop the project being delivered, but will be
  given preference if there is time.

- "Nice to have" are unlikely to be done, but still worth noting for a
  future release.


## Define test criteria for features

Every feature requires test criteria to describe when it is complete.

- Developers use this to know what work must be done.

- Testers use it to confirm the feature has been implemented properly.

Using the previous story, the test may be:

> Given I am a group manager
> and I am on a user profile page,
> when I click the "add user to group" button,
> then the user becomes part of my group.

The main structure of the test is "given ? when ? then ?".
Each of those sections can include multiple states, actions and results
that are joined with "and ?".

These can be used for automated testing with Cucumber for
[Ruby](https://cukes.info/),
[Node](https://github.com/cucumber/cucumber-js)
or [Python](http://lettuce.it/) (as Lettuce).


## Rate the complexity of tasks

These scores are relative to each other but do not convert to specific
times.

This is a guide for how I usually rate tasks.
These vary between projects so they should only be used as a starting
point.

- 0: Work is finished and just needs to be tested.

- 1: Quick change that anyone could do.

- 2: Changing something that requires some knowledge of impacts.

- 3: Bigger change but work is still clear.

- 5: Change with some uncertainty.

- 8: New feature with planning required.

- 13: Feature change that will impact multiple areas.
  Enough uncertainty that it will probably take longer than expected.

- 21: Major task that requires discussion and planning.
  May be broken down into further tasks after more research.

You can then add the scores of tasks done over a certain time frame to
figure out the rate at which tasks can be done.

An alternative to numbers can be to use clothing sizes, like S, M, L
and XL.
But this will not allow calculating the task completion rate.


## Regular feedback

You should try to have something to test at regular intervals, such as
every 2 weeks.

Feedback from client testing may result in scope changes.
This is not a bad thing, as long as the client is made aware of the
consequences of the choices they are requesting.
