---
subtitle: Using ActiveRecord
summary: How to read and write data in the database
layout: default
index: 4.3
---

# ActiveRecord Models

Now that we have a database table called `todo_items` all set up with an appropriate schema, we now need to create an object to interact with this table in our Ruby code. Fortunately, ActiveRecord already has a class called `ActiveRecord::Base` that will automatically expose all the necessary functionality to our application. We are going to create a *subclass* of `ActiveRecord::Base` called `TodoItem` that will represent our data.

Create a new folder in the root of your application called `models`, and a file inside this new folder called `TodoItem.rb` (the name is important - the class name is how ActiveRecord knows which database table to use, and your filenames should match your class names). Edit the `TodoItem.rb` file to look like this:

```ruby
class TodoItem < ActiveRecord::Base

end

```

Now edit your 'app.rb' file to include your new Model. After the `Bundler.require` line, add the following require statement:

```ruby
require './models/TodoItem'
```

Now the TodoItem class will be available in your application to use for querying the `todo_items` table in your database.

Here are some examples of how this can be used:

```ruby
# get all items in the database
all_items = TodoItem.all

# print a description of each item to the console (ordered by due_date)
all_items.order(:due_date).each do |item|
  puts item.description
end

# get all items with a due date of '10/4/14'
due_today = TodoItem.find_by(due_date: '10/4/14')

# add a new item to the database
TodoItem.create(description: "Learn ActiveRecord", due_date: "today")
```

For more information about how to use ActiveRecord, see [this guide](http://guides.rubyonrails.org/active_record_basics.html), or email me with your questions.
