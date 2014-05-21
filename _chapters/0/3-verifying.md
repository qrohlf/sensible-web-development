---
subtitle: Verifying Your Setup
summary: Tools to set up before the first day of class
layout: default
index: 0.3
---

# It's time to test your setup!

Now that you have Ruby 2.1.1, bundler, and SQLite installed, you should be able to run Ruby-based web applications locally. 

## Preflight Check
First, make sure that you've got all of the tools from the previous section installed:

```sh
git --version       # should be version 1.8.*
sqlite3 --version   # should be version 3.*
ruby --verison      # should be version 2.1.1-*
bundle --version    # should be version 1.6.*
```

If any of those commands give you errors, go back and try reinstalling the relevant tools. A quick tip - Google is your friend when it comes to cryptic error messages.

## Running Your First Sinatra App
Once you've verified that all of the dependencies for Ruby web development are installed, you can try running an app!

First, clone the example app with Git:

```sh
git clone https://github.com/qrohlf/webdev-gettingstarted.git
```

Next, go into the app directory and install the dependencies with bundler

```sh
cd webdev-gettingstarted
bundle install
```

Finally, run the app

```sh
shotgun
```

And you should be able to browse to http://localhost:9393 and see a screen that looks like this:

![](/images/gettingstarted.png)

If you're not seeing a screen that looks like that, check the output of `shotgun` for error messages!