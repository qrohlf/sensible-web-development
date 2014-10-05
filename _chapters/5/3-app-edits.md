---
subtitle: App Edits
summary: Getting your application ready for deployment
layout: default
index: 5.3
---

# Getting your app ready

In order to deploy our app to Heroku, we'll need to set it up to use a SQLite database when we're developing it locally, and a Postgresql database when it's running on the server. Here's a step-by-step breakdown of how to do this:

## 1. Edit your Gemfile

We'll need to add a new dependency to our Gemfile so we can load the libraries needed for ActiveRecord to talk to Postgresql. We'll also need to only load the `sqlite3` gem when we're developing our app locally. The way that we can do this is with gem groups. Gem groups are a way to specify which gems should be used in an app based on where it's running. Add two new gem groups to the bottom of your Gemfile and add the `pg` gem to the production group, like this:

```ruby
group :development do

end

group :production do

end
```

Then, move the `sqlite3` and `shotgun` gems to the development group, as we will not be using them on the server. You should end up with a final Gemfile that looks like this:

```ruby
ruby "2.1.1"
source 'https://rubygems.org'
gem 'sinatra', '>= 1.4.5'
gem 'activerecord', '4.0.4'
gem "sinatra-activerecord", require: 'sinatra/activerecord'
gem "rake"
gem "tux"

group :development do
  gem 'sqlite3', '>= 1.3.9'
  gem 'shotgun', '>= 0.9'
end

group :production do
  gem 'pg'
end
```

Once you've finished tweaking your Gemfile, make sure to install the new dependencies. We'll use a slightly different command in the terminal this time to tell Bundler to only install the default and development groups:

```bash
bundle install --without production
```

Note that this will create a new file in `.bundle/config` that saves your bundler preferences. Now, when you run `bundle install` it will skip the production gems by default.

If this executes without errors, you are ready to move on to the next step.

## 2. Gitignore

`.gitignore` is a special file that Git uses to know what to ignore when you're making changes to a project. Edit or create a file called `.gitignore` in the root of your application and add the following line to it:

```
.bundle
```

Here, we're telling git to ignore our environment-specific bundler configuration (i.e. the file that makes bundler skip our production gems). This is important, because if we were to push this file to our server along with the code it would prevent our production gems from being loaded.

## 3. Configure ActiveRecord (again)

Now that we'll be using a different database system on the server, we need to configure ActiveRecord to change its configuration based on where it is running. Heroku exposes the database connection details as an environment variable called `DATABASE_URL`. In Ruby, environment variables are accessible in the `ENV` hash, so we can use this to check where our app is running and configure it appropriately.

Previously, our configuration for ActiveRecord looked like this:

```ruby
ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'db/development.db',
  :encoding => 'utf8'
)
```

Let's change it to look like this:

```ruby
if ENV['DATABASE_URL']
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])
else
  ActiveRecord::Base.establish_connection(
    :adapter  => 'sqlite3',
    :database => 'db/development.db',
    :encoding => 'utf8'
  )
end
```

The new code checks for the presence of the `DATABASE_URL` environment variable. If it exists, ActiveRecord is configured with connection details from the variable. Otherwise, we fall back to our development SQLite database.
