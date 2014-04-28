# U3.W7: Designing Schemas


#### I worked on this challenge by myself.


## Release 0: Student Roster Schema

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/images/schema_students.jpg)

## Release 1: One to Many Schema

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/images/schema_one-to-many.jpg)

## Release 2: One to One Schema

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/images/schema_one-to-one.jpg)

## Release 3: Many to Many Schema

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/images/schema_many-to-many.jpg)

## Release 4: Design your own Schema
Description of what you're modeling:

This database is a rolodex of friends and some personal information about them (names, birthdays, email, and phone). For whatever reason, we've included the birthplace of several of them. Because only a few friends have volunteered the information and because it's not particularily relevant to our friend contact info table, there's another table which includes city of birth, state of birth, and country of birth. This information is unlikely to change (unless someone was lying, naturally), so a one-to-one relationship works best in this instance.

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/images/my-schema_one-to-one.jpg)

In this example, I've been asked to create a public relations contact/request management system. The first table includes contacts and their information (name, media affiliation, email, phone, and how long they have been in the database). There's also a table for request types (for example, a request for an interview with our organization's CEO) and a description of the request type (perhaps more enlightening information on how to handle this particular type of request). The middle table keeps a running count of the incoming requests, both with the contact id and the request type id, as well as the time contact was initiated.

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/[images/my-schema_many-to-many.jpg)

## Release 5: Reflection

I enjoyed this challenge in part because I'm a visual learner (playing around with boxes and rows that change color was kind of fun) and also because I started thinking about problems that need to be solved and how databases, and by extension my code, can eventually address these problems.
