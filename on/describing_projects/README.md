# Describing projects

Some suggestions on ways to gather the information from clients about
projects.


## Question feature requests

Clients may request features because they are unaware of alternatives.

Requests may also be based on existing work-flows that will change with
the new product, making the feature unnecessary.

Discovering why a client wants a feature will help decide if and how it
should be implemented.


## Define user types

Before deciding on features, it is helpful to know the types of users
that want them.

Here are some of the possible user types for a messaging application:

- All users want to send and receive messages.

- Group managers want to add and remove users from their group.

- Account managers want to create new accounts and reset passwords.

- System managers want to know the usage and growth rate of storage so
  they know when they need to increase the capacity.

This list specifies the types of users and their main goals.


## Use stories to describe features

Features of an application can be described as stories.

> As a group manager,
> I want to add a user to my group,
> so that they can receive group messages.

The usual structure is "As a ? I want ? so that ?".
This specifies the type of user, the feature they want and the reason
for it.

The "so that" part is used to justify why a person wants a feature.
This may expose issues with the feature that lead to a better solution.


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


## Regular feedback

You should try to have something to test at regular intervals, such as
every 2 weeks.

Feedback from client testing may result in scope changes.
This is not a bad thing, as long as the client is made aware of the
consequences of the choices they are requesting.
