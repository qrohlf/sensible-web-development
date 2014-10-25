---
subtitle: Lab 6 Hints
summary: How to get started on Lab 6
layout: default
index: 6.1
---

# Lab 6

The majority of Lab 6 was explained in class. If you missed class or have questions about the material we covered, please attend office hours or email me. The following hints/tips are intended to supplement the material from class, not restate it.

The code for the "email" client that we wrote in class can be viewed [here](https://github.com/qrohlf/webdev-examples/tree/emails-example).

## General Checklist

For Lab 6, you will be adding an additional User model to your application and creating a relation between your TodoItem model and the new model. Here is the overall outline of how to do this:

1. Modify your database so that it has a new table `users` and a new column in the `todo_items` table called `user_id`
2. Add a new Model to your app to interface with the `users` table
3. Write new routes and views to create and modify users
4. Modify your existing routes and views so that todo items now belong to users.

Each step is explained in more detail below:

## 1. Database Modifications

If you remember from week 4, the way that we define the database for our app is by writing *ActiveRecord migrations*. The skeleton file for an ActiveRecord migration is created by running

```
rake db:create_migration NAME=some_descriptive_name
```

Tables are created within this file with the `create_table` block (see the end of [section 4.2](/chapters/4/2-creating-databases.html) to review this). You should be able to create a migration to add a `users` table to your app using what you learned in week 4.

The next step is to modify our existing `todo_items` table. This is also done with an ActiveRecord migration, but instead of using the `create_table` method, we'll be using the `change_table` method. Here's an example:

```ruby
#db/migrate/20141024234850_add_user_id_to_todo_items.rb
class AddUserIdToTodoItems < ActiveRecord::Migration
  def change
    change_table :todo_items do |t|
      t.integer :user_id
    end
  end
end
```

Now is where we would normally run `rake db:migrate` to apply the new migrations to our database. Unfortunately, a limitation of the SQLite database engine that our app is using in development mode is that it cannot change existing tables, so our migrations would fail. Instead, we'll delete our old database and re-create it from scratch. In the terminal, this looks like this:

```bash
rm db/development.db
rake db:migrate
```

If you want to delete your database on Heroku, you can use the `pg:reset` command to reset your default database `DATABASE_URL`. It will ask you to confirm this action by typing the name of your app at the prompt.

```bash
heroku pg:reset DATABASE_URL
```

## 2. Adding Models

You'll need to add a new model for your users table. For a refresher on ActiveRecord models, see [section 4.3](/chapters/4/3-using-activerecord.html).

You'll then need to set up `belongs_to` and `has_many` relations between your two models. We covered this in class - you may also find the [Rails Guide on Associations](http://guides.rubyonrails.org/association_basics.html) helpful.

## 3. Writing new Routes

Now that we have nested resource (i.e. we have data that belongs to other data), we can't get away with just one or two pages anymore. Fortunately, Sinatra provides a helpful mechanism for *dynamic* routing with wildcards. URL segments that start with a colon will act as wildcards, and will be captured and added to the params hash. Here is an example:

```ruby
get '/users/:name' do
  @user = User.find_by(name: params[:name])
  erb :user_list
end

# this will match
# /users/foo
# /users/bar
#
# this will NOT match
# /users/foo/
# /users/foo/bar
```

Note that the wildcard can be any arbitrary string as long as it's a valid Ruby symbol.

```ruby
get '/users/:unicorn' do
  @user = User.find_by(name: params[:unicorn])
  erb :user_list
end
```

Will work just as well as the example above.

You can use wildcards in any kind of route, including `post`.

## 4. Modifying existing Routes & Views

You will need to modifying your existing routes and views that deal with todo items so that they are aware of the fact that todo items are now owned by users. For example, instead of

```ruby
post '/' do
  TodoItem.create(params)
end
```

You will need to do something like

```ruby
post '/:user_id/create_item' do
  User.find(params[:user_id]).todo_items.create(params)
  redirect "/#{params[:user_id]}"
end
```

Or

```ruby
post '/:user_id/create_item' do
  @user = User.find(params[:user_id])
  TodoItem.create(user: @user, description: params[:description], due: params[:due])
  redirect "/#{params[:user_id]}"
end
```

You will then need to update your form's`action` attribute in your todo list view to reflect the new URL it needs to call!

# Final thoughts

This lab does not require a lot of coding (it's possible to make all the required changes in ~30 minutes), but it does require you to have a solid conceptual understanding of nearly everything that we have covered in the course so far. If you find yourself struggling with something you need to do for this lab, make sure you understand *why* you need to do it. Again, I am always available to help via email (if you're getting a specific error message, make sure to include a screenshot!).