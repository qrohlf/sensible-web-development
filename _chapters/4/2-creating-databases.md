---
subtitle: Creating Databases
summary: How to prepare a database for your data.
layout: default
index: 4.2
---

# Prep Work

To use the ActiveRecord database tools, we'll need to make a few additions to our application:

First, we'll need to add ActiveRecord, the Sinatra ActiveRecord interface layer, and rake to our application's dependencies. Add these three lines to your `Gemfile`:

```ruby
gem 'activerecord', '4.0.4'
gem "sinatra-activerecord", require: 'sinatra/activerecord'
gem "rake"
```

Save this file, and then install your dependencies by running `bundle install` in you'r app's root directory in the terminal.

Next, we'll set up a file that lets us manage our database in the terminal. Create a new file in your app's root directory called `Rakefile` (capitalization is important!) and add the following two lines to it:

```ruby
require "sinatra/activerecord/rake"
require "./app" # change this if your app file is something other than "app.rb"
```

You can verify that you've set everything up correctly by running `rake -T` in the terminal. You should see a list of

# Schema

One of the most important concepts to understand when dealing with databases is *schema*. "Schema" refers to the structure or shape of your data. A common example is a simple spreadsheet - the very first row that contains your column headings is the schema for that spreadsheet. Just like you can't just paste a bunch of raw data into a spreadsheet and expect the column headings to magically appear, you can't start putting data into your database until you've defined a schema for it<sup>1</sup>.

Normally, to define a schema for your database using SQL, you'd have to open a command-line SQL tool like sqlite3, point it at a database, and run something like this:

```sql
CREATE TABLE todo_items
(
id INTEGER PRIMARY KEY AUTOINCREMENT,
description varchar(255),
due varchar(255)
);
```

This will differ depending on the specific database type that you're using, and you'd have to set up some kind of check in your app to make sure that your database schema matched what your app is expecting every time the database is loaded.

Instead of dealing with that, we're going to use Ruby to describe what we want our database to look like, and ActiveRecord will set it up for us!

In the console, create a migration with `rake db:create_migration`. Then open it up in your editor and change it to look like this.

```ruby
# db/migrate/20141001173512_create_todo_items.rb
class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :description
      t.datetime :due
    end
  end
end
```

Save this file and run `rake db:migrate` in the terminal. You should see the migration run, and then your database will be all set up!

----

<sup>1</sup>A recent trend in database architecture has been the use of *schemaless* or *NoSQL* databases. While extremely flexible and powerful, these database systems are often [more difficult to query](http://howfuckedismydatabase.com/nosql/) than traditional relational databases.
