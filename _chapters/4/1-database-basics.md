---
subtitle: Database Basics
summary: What are databases, and why do we use them?
layout: default
index: 4.1
---

# Databases?

Databases are the preferred way to store information on the web. So far, we have been storing our data in a "flat file", or a file with no special structure or meaning. For reading and appending to a simple list, this actually works pretty well, but problems start to arise if we want to be able to delete items, or ensure that the data isn't overwritten by some error, or store and filter a set of items that is too big for our app to load into memory at the same time.

This is where databases start to become extremely helpful. Databases all provide at least two things: efficient storage and querying of large sets of data, and some kind of API that allows your application to create, read, update, and delete data while still ensuring that the integrity of your database is maintained. There are many different database implementations - for this chapter we will be talking about traditional *relational databases* that can be queried using *Standard Query Language* or SQL.

Databases are essential tools for writing scalable and maintainable web applications. In this chapter, we will look at how we can effectively use them to improve our application, focusing mostly on implementation rather than theory (the subject of database workings/theory is often split up into 2-3 courses only about databases). We'll also be using the [ActiveRecord](http://guides.rubyonrails.org/active_record_basics.html) database abstraction layer so that we can write our database queries using Ruby rather than having to learn SQL.

# ActiveRecord

Working directly with databases can be cumbersome. Often, developers will find themselves writing mind-boggling queries in SQL to do what seem like simple tasks. It also brings up a host of issues - when working directly in SQL, developers have to be constantly aware of things like SQL injection attacks, schema management, and the underlying database techology that their application is running on.

ActiveRecord is an *Object-Relational-Mapping* layer, or ORM written in Ruby and designed specifically for web applications. It allows you to interact with your database schema and contents as objects, using Ruby code rather than SQL. The rest of this chapter will deal mainly with ActiveRecord.

# Overview

In order to add a database to your app, you will need to:

 1. Add several dependencies to your `Gemfile`.
 2. Use `rake` to create a database migration and run it.
 3. Add a model to your app by creating a subclass of `ActiveRecord::Base`.
 4. Modify your `app.rb` file to read and write to the database instead of a file.

 
