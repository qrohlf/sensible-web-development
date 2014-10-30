---
subtitle: Databases II
layout: intro
index: 6

date:
    October 23

overview:
    "This week, we'll be covering some more advanced database functionality - validations and relations. This will be the last lab of the class; we'll be moving into projects next week."

reading:
    None this week.

due:
    You should have Lab 5 completed prior to class.

workshop:
    Advanced ActiveRecord - validations and relations.

assignment:
    title: "Lab 6: Multi-user app"
    summary: Turn your app into a multi-user todo list using ActiveRecord relations
    requirements:
        - "while this spec has users in mind, it is also acceptable to do something else using a relation in your database. For example, instead of adding 'users', you could modify your app to handle multiple 'lists' of items"
        - write a migration to add a `users` table to your application.
        - "write a migration to add a `user_id` column to your `todo_items` table"
        - "each user should get their own todo list that they can add and delete items on"
        - the root route or index should now show a list of links to users' todo lists.
    due: before next week's class
    tag: v0.6.0
---
