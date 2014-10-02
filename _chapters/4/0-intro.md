---
subtitle: Databases
layout: intro
index: 4

date:
    October 2

overview:
    This week touches on some basic concepts related to databases on the web, then introduces the ActiveRecord database abstration layer.

reading:
    Please familiarize yourself with [basic database terminology](http://homepages.ius.edu/DSCHWEI2/handouts/access/terms.htm) and [ActiveRecord basics](http://guides.rubyonrails.org/active_record_basics.html). Don't worry too much if you don't understand the code examples or migrations, just try to get a sense for what ActiveRecord's role is in a ruby web app.

due:
    You should be caught up with the class, with your Lab 3 pushed to GitHub and tagged properly with a `v0.3.x` tag.

workshop:
    short description of the workshop topic

assignment:
    title: "Lab 4: ActiveRecord"
    summary: Modify your todo list to use a database!
    requirements:
        - You should write an ActiveRecord migration to create your database
        - All dynamic data in your app should be loaded from a SQLite database using an ActiveRecord model
        - Your todo items should be displayed sorted by due date
        - Your form should now save data to the database instead of a file
    due: before next week's class
    tag: v0.4.0
---
