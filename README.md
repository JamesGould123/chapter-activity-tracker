# SSDP Chapter Activity Tracker (CAT) v4.0.0

This time, *in rails*.

We built up the third version of the CAT in Flask, before I really understood how MVC worked, what web frameworks were for, and some other best practices.

Since launch, CATv3 has run into a ton of predictable problems which would be completely solved had it been built properly, which I can accomplish quickly and to a higher degree of excellence in Rails.

So CATv4 will be a quick rebuild in Rails, and should be the final application moving forward.

If you want to contribute, but don't know a single thing about web development, you can pretty easily get started with the [Michael Hartl Tutorial](https://www.railstutorial.org/) - which is free.

Feel free to make pull requests against the development branch, I'll make sure things look good, and deploy.

## Index
- [Heroku link](https://ssdp-cat.herokuapp.com/)
- [Ruby version](#ruby-version)
- [Database creation](#database-creation)
- [Database initialization](#database-initialization)
- [How to run the test suite](#how-to-run-the-test-suite)
- [Services](#services)
- [Deployment instructions](#deployment-instructions)
- [Versioning](#versioning)
- [Release Notes](#release-notes)

## Ruby version

2.5.1

## Database creation

The CAT is set up to use SQLite3 in development, and PostGres in production (for Heroku). So you shouldn't need to initialize anything outside of rails to get a local database working. Just run the migrations:

- `rails db:migrate`

## Database initialization

The seed files come from the CAT v3 database as of 12/21/18.  This includes actions, spendings, and users. To populate the database with that data, run:

- `rails db:seed`

However, if you're restoring the CAT or looking for updated content, you will need to get the database backups from Heroku. The heroku account is managed by Tyler Williams. Contact him through github or at [tyler@ogdenstudios.xyz] if you need deployment access.

## How to run the test suite

There... are no working tests for CAT v4 as of now.

## Services

(job queues, cache servers, search engines, etc.)

## Deployment instructions

We deploy using heroku. The heroku account is managed by Tyler Williams. Contact him through github or at [tyler@ogdenstudios.xyz] if you need deployment access.

## Versioning

Unless any massive, earthshattering changes are made to the core rails app, any Ruby on Rails iteration of the CAT should be released as v4.x.x

The first decimal place will be for bug fixes or features that fix or enahnce the functionality or usability of the site in a major way: Fixing stats bugs, adding reporting functionalities, fixing major user issues, updating the UI in significant ways.

The second decimal place will be for minor bug fixes and features: Copy changes, minor front end changes, small logic errors or weird user flows that can be solved easily.

Issues and feature requests in the issue tracker will be labeled with minor or major to help determine versioning systems.

Each first decimal place will trigger a reset of the second. So if we were on version 4.0.1 and released a major bug fix, the version would change to 4.1.0 and so on and so forth.

## Release Notes

### CAT v4.0.0

#### 1/1/19

We're very excited to release the fourth and most stable version of the Chapter Activity Tracker. This web app has come a long way from its initial conception and implementation.

The first iteration of the CAT was a WordPress theme, built by Drew Stromberg. In the earliest implementation, we used posts, comments, and categories native to the WordPress platform to track points. It was a quick solution needed during rapid development, and worked well for a year or so.

In the summer of 2016, Drew converted the CAT WordPress theme into a Drupal installation, complete with a content schema and new front end theme. Drupal solved back-end problems, and allowed us to more easily track statistics and report on data to our stakeholders, but the platform still had plenty of limitations.

In the 2017-2018 program year, Tyler Williams rebuilt the CAT using the Flask microframework for Python. This rebuild provided more speed, allowed for more customization and data reporting features for staff, and incorporated the bootstrap frontend framework.

CAT v3, built with Flask, still suffered from some customization issues. It was built from the ground up and some fundamental architecture made the codebase difficult to read and maintain, without any real convention.

Enter CAT v4.0.0 - rebuilt in Rails, the Rails Way. This fourth, and hopefully final, major version

##### Bug fixes

###### Login Changes

We've had a great deal of confusion surrounding login names, and have switched over to using email to login, which is more intuitive for most than using their entire school's name. Your login will now be your chapters.ssdp.org email address (if you don't know what it is, ask your Outreach Coordinator). Passwords have not been changed in CAT v4 launch.

###### Point tracking

We've been aware of a number of point tracking bugs for a long time. These included things like:

- Incorrect point counts
- Spending points increased total point counts instead of detracting
- Four digit point counts didn't render correctly in the chapter views

All of these point tracking bug should be fixed.

###### Statistics fixes

The queries used to pull high quality chapters weren't matching the numbers 1 for 1 in CAT v3, but are more concise and 100% correct now.

##### New Features

###### Password resets

The CAT v4 was built using the Devise gem for user authentication and authorization. In the past, we built our own auth system from scratch, and hadn't included the ability to change passwords. Devise comes with this functionality built in, and you can now send an email to yourself to reset your password.

To reset your password:

1. Go to https://cat.ssdp.org/users/sign_in
2. Click "Forgot your password"
3. Enter your CAT email address and click "Send me reset password instructions"
4. Click on the "change my password" link in your email - it should have come from tyler.williams@ssdp.org
5. Enter your new password and confirm

###### Pagination on Chapters List

The chapters list at https://cat.ssdp.org/chapters now paginates with 10 chapters per page

###### Activity Reports for Staff

Each chapter page now has a "follow" button. Currently, all users can follow any other user, but only staff will receive reports. Staff reports can be mailed daily or weekly, and will include all actions taken by the chapters they follow.

##### Bug Reports
Want to report a bug or contribute? <a href="https://github.com/SSDP-Dev/chapter-activity-tracker" target="_blank" rel="noopener noreferrer">Find the CAT on GitHub!</a>
