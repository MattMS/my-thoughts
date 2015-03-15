# Apps for people

This describes some ways to gather information from clients about
features requests.


## Problems with feature requests

Clients may request features because they are unaware of alternatives.

Requests may also be based on existing work-flows that will change with
the new product, making the feature unnecessary.

Discovering why a client wants a feature will help decide if and how it
should be implemented.


## Define user types

Before deciding on functionality, you need to know the users types that
require it.

Here are some of the possible user types for a messaging platform.

- All users want to send and receive messages.

- Users want to be able to organise and view old messages.

- Group managers want to add and remove users from their group.

- Account managers want to create new accounts and reset passwords.

- System managers want to know the usage and growth rate of storage so
  they can know when they need to increase the capacity.

Learning user types will expose the scope of the project and allow
planning of features.


## Use stories to describe features

Features of an application can be described as stories.

	As a group manager
	I want to add a user to my group
	So that they can receive group messages.

This specifies the type of user, the functionality they want and then
why they want that functionality.

The "so that" part is used to justify why a person wants a feature.
This may expose issues with the feature that lead to a better solution.


## Define test criteria for stories

Every story requires test criteria to know when it is complete.

Developers use this to know what work must be done.
Testers use it to confirm it has been implemented.

	Given I am a group manager
	And I am on a user profile page
	When I click the "add user to group" button
	Then the user becomes part of my group.

The main structure of the test is "Given ? When ? Then ?".
Each of these sections can include multiple states, actions and results
that are joined with "and".


## Regular feedback

You should try to have something to test at regular intervals, such as
every 2 weeks.

When people test what you are making, they will give feedback that may
change the initial scope and direction of the project.

This is not a bad thing, as long as the client is made aware of the
consequences of the choices they are requesting.
