---
subtitle: Deploying
summary: Pushing your code to Heroku
layout: default
index: 5.4
---

# Deploying

Now that we have set up the Gemfile properly, configured git to ignore our environment-specific settings, and set up ActiveRecord to get its configuration from the `DATABASE_URL` environment variable, it's time to push our code to Heroku!

Since we'll be deploying our code with Git, now would be an excellent time to make a git commit with a descriptive message:

```bash
git add -A .
git commit -m "Set up app to use postgresql in production"
```

Now, we'll use the `heroku` command to set up a place for our app to live on Heroku

```bash
heroku create my-very-creative-app-name
```

You should see output that looks like this:

```bash
Creating webdev-example... done, stack is cedar
http://webdev-example.herokuapp.com/ | git@heroku.com:webdev-example.git
Git remote heroku added
```

What just happened is that that the heroku toolbelt created a new application in your Heroku account and added a git remote that points to it. Now, if you run `git remote` you'll see two entries - origin (GitHub) and heroku.

All we need to do to push our code to the server now is this:

```bash
git push heroku master
```

This will spit out a whole bunch of text as Git sends your most recent commit to Heroku, which will then bundle your app's dependencies and run your app. You may see some errors from rake and warnings about a Procfile - these are safe to ignore. As long as you see `http://yourapp.herokuapp.com/ deployed to Heroku` at the very end, you will know that the deploy succeeded.

<div class="alert alert-warning">
  Tip: Remember that <code>git push</code> pushes your <em>commits</em>, not your files. If an error prevents your code from being deployed the first time, you will need to commit your fixes before trying to run <code>git push heroku master</code> again.
</div>

Once your code has been deployed, there is one more thing that we need to do. Remember that in the last chapter we had to run `rake db:migrate` to set up our database. Since we're using a brand-new postgresql database on Heroku, we'll need to do that again on the server. Fortunately, the heroku toolbelt makes this simple:

```bash
heroku run rake db:migrate
```

You should see output signaling that your database has been set up:

```
Running `rake db:migrate` attached to terminal... up, run.2373
== 20141001173512 CreateTodoItems: migrating ==================================
-- create_table(:todo_items)
   -> 0.0364s
== 20141001173512 CreateTodoItems: migrated (0.0366s) =========================
```

That's it! You can now browse to http://yourapp.herokuapp.com in any browser to see your app running on a live server!

<div class="alert alert-warning">
  Tip: <code>git push heroku master</code> only pushes your code to Heroku, not GitHub. You will still need to push your commits and tags to GitHub to turn in your assignment.
</div>


# Next Steps

The last three sections walked you through preparing your app for deployment and deploying it to Heroku. This means that you've already got 3 of the 5 requirements for this week's lab taken care of. The next chapter will give you some tips on how to add a Readme to your repository, and how to allow users to remove items from the todo list.