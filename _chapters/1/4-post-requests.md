---
subtitle: Handling Data
layout: default
index: 1.4
---
# Working with POST data
Now that you have a way to collect data from the user, you need to be able to do something with that data in your app.

Remember that Sinatra `routes` are just http verbs with a path after them. So our route to handle form submissions will look like this:

```ruby
post '/' do 
  #code goes here
end
```

But how do you get at the data that the user submitted in the POST request? Sinatra has a special hash called `params` that contains all of the data that was issued with the user's request, accessible in routes. So if we wanted to output all of our params to the browser (useful for debugging), we would do something like this:

```ruby
require 'json' #nice output formatting
post '/' do 
  JSON.pretty_generate params
end
```

Since 

<div class="alert alert-info">Tip: Ruby's JSON library is great for pretty-printing data structures for debugging as valid JSON with nice line breaks. Another popular library to use for debugging is the <a href="https://github.com/michaeldv/awesome_print">awesome_print</a> gem.</div>