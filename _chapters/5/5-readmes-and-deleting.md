---
subtitle: Deleting Items
summary: Some tips to help you finish Lab 5
layout: default
index: 5.5
---

# On The Subject of Deleting...

Basically, to delete you need a way to tell the server to delete an item from the browser. You already have all the knowledge you need in order to do this. Here's a quick recap:

### Sending data between the browser and server

To send data between the browser and server, we can use an html form:

```html
<form action="/some_endpoint" method="POST">
  <input type="text" name="some_user_data" placeholder="something"/>
  <input type="hidden" name="some_constant_data" value="the_value"/>
  <input type="submit" value="submit button"/>
</form>
```

And then process it in a callback in `app.rb`:

```ruby
post '/some_endpoint' do
  some_user_data = params[:some_user_data]
  some_constant_data = params[:some_constant_data]
  # do some action with that data
end
```

### Deleting an item on the server:

ActiveRecord makes this easy

```ruby
some_id = 7 #the id of the item you want to delete
TodoItem.find(some_id).destroy
```