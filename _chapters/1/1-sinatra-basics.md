---
subtitle: Sinatra Basics
layout: default
index: 1.1
---

# About Sinatra

Sinatra is a [DSL](http://en.wikipedia.org/wiki/Domain-specific_language)/microframework for creating web applications in Ruby. It runs on a webserver and responds to HTTP requests based on the code that you write. 

If you ever have questions about Sinatra, the [Sinatra Readme](http://www.sinatrarb.com/intro.html) is a concise, comprehensive, and well-written explanation of almost all of the features of Sinatra that we'll be using.

## What's in an app?

Sinatra applications typically contain one or more *Routes*, which are chunks of Ruby code that correspond to a given [HTTP request method](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods) (like `GET`) and path (like `/helloworld/`). Routes are typically defined in a single file at the root of your project called `app.rb`.

Most Sinatra applications also contain one or more *Views*, which are used to generate the HTML that gets sent back to the user's browser. While Sinatra supports many different template languages for views, we'll be using Embedded Ruby (ERB) templates to get started. They're basically just like html files with the notable difference that any code inside of `<% %>` tags will be executed by the Ruby interpreter and any code inside of `<%= %>` tags will be executed the the Ruby interpreter and then output to the file. 

## Sinatra Structure

You already have a simple Sinatra example on your machine from the last chapter, called `webdev-gettingstarted`. Open up the directory where you cloned it so that you can follow along. You should have the following files in the directory:

- `app.rb` – This is where the logic for your app lives, including *Routes* and *Helpers*
- `views/` – This folder is where the *View* templates for your app go
	- `layout.erb` – A special file that gets wrapped around all of your Views. I'm using it to generate everything outside of the `<body>` tags.
	- `index.erb` – A view for the site index. Note that this could be named something different than "index", the template to use for the `/` route is explicitly specified in `app.rb`
	- `bottles.erb` – Another view that renders the "99 bottles" song lyrics. Note that both this view and the `index.erb` view only need to contain the content that goes inside of the `<body>` tag, as `layout.erb` handles everything else.
- `Gemfile` – The Gemfile is used by Bundler to keep track of what Ruby libraries (or "gems") your app depends on. 
- `Gemfile.lock` – Gemfile.lock is also used by Bundler to keep track of what gem *versions* your app is currently using. This ensures that you use the same gem versions in every instance of your application. 
- `config.ru` – This is a rackup configuration file that's used by Shotgun to figure out how to run your app.

## Let's take a look at `app.rb`

This file is kind of like the "main method" for a Sinatra application: it's in charge of loading all of the required gems and other files, as well as declaring the application's routes. Our example application does several things. First, it requires the `rubygems` and `bundler/setup` libraries, which are needed to invoke Bundler. Next, it calls `Bundler.require`, which in turn requires all of the dependencies that we've specified in our Gemfile. Right now, this means Sinatra, Sqlite, and Shotgun.

Once all of the dependencies are loaded, the app declares the *root route* with `get '/'` and then has a block that renders a template. 

It also declares a second route, `get '/99bottles'`, and does some computation in the route to generate the lyrics to "99 bottles of beer on the wall". The result of that computation is stored in an *instance variable* (variables with an @ sign in front of them are instance variables, and behave kind of like globals). It then renders another template, which uses the instance variable created by the route to fill in some content.

```rb
# app.rb
# this is a simple Sinatra example app

# use bundler
require 'rubygems'
require 'bundler/setup'
# load all of the gems in the gemfile
Bundler.require

# define a route for the root of the site
get '/' do
  # render the views/index.erb template
	erb :index
end

# define another route with some content that's then shown by the view
get '/99bottles' do
  # Ruby is fun because you can mix functional programming with imperative programming. 
  # Here we specify a Range from 1 to 99, convert it into an Array, reverse the Array order, 
  # then map a block to the Array that converts each Integer into a String using ruby string 
  # interpolation (the #{} stuff)
  @lyrics = (1..99).to_a.reverse.map {|i| "#{i} bottles of beer on the wall, #{i} bottles of beer. Take one down, pass it around, #{i-1} bottles of beer on the wall."}
  # renter the views/bottles.erb template
  erb :bottles
end
```

It's worth noting that without comments and blank lines, this example app is only 10 lines of code long! Sinatra has done all of the heavy lifting so that we can create a simple but complete web application in only 10 lines. It's like magic!

## The Gemfile

One of Ruby's main strengths is its robust package management system, rubygems. Ruby applications are highly modular, and can depend on dozens of different *gems* (ruby-speak for published open-source libraries). This prevents developers from having to keep reinventing the wheel - there are well-written, community-maintained gems for everything from search algorithms to mail protocols to machine translation. The Gemfile is where you keep track of all of the gems that your application depends on, and optionally specifiy minimum and maximum versions to use for those gems.

Our Gemfile specifies a required Ruby version, a source for the gems, and three gem dependencies with minimum versions:

```rb
ruby "2.1.1"
source 'https://rubygems.org'
gem 'sinatra', '>= 1.4.5'
gem 'sqlite3', '>= 1.3.9'
gem 'shotgun', '>= 0.9'
```

While the version specifiers for gems (i.e. `>= 1.4.5`) aren't required, it's good practice to specify the minimum required versions of your applications dependencies in your Gemfile.

## Views

The best way to understand View templates is to look at them and play around. The `views/bottle.erb` template should be especially instructive since it includes a loop that wraps around some HTML. If you've ever used PHP, ERB is very similar to it. 

## Rackup config

The Rackup config (`config.ru`) isn't strictly needed for a Sinatra application, but it's helpful to have one since many tools (including Shotgun) expect it to be there. It will look the same for almost every Sinatra application:

```rb
require './app'
run Sinatra::Application
```

That's all that you need to tell Shotgun and other tools how to run the Sinatra app that we've developed!

# Running your app

To run your app, go to the directory containing your app and run `shotgun`. Your app will be available at http://localhost:9393, and any log messages your app generates will be output to the terminal running `shotgun`.