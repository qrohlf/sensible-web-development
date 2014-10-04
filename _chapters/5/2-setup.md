---
subtitle: Deployment Setup
summary: Some bookkeeping
layout: default
index: 5.2
---

# Getting started with Heroku

For this class, we'll be using a service called Heroku to deploy our apps. Heroku is a popular cloud computing platform that makes deploying applications super easy. They have a free plan for development & low-traffic websites, so it's ideal for our purposes. You can think of it as a free server that you can run your application on.  
First, you will need to create a free account at [https://id.heroku.com/signup/www-header](https://id.heroku.com/signup/www-header). Do that now.

Then, you'll need to install the Heroku Toolbelt. Follow the instructions for your system:

## Mac

Run `brew install heroku-toolbelt` in your terminal.

## Ubuntu

Run `wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh` in your terminal.

# Setup

After you've created a Heroku account and installed the Heroku Toolbelt, you'll need to connect your computer to your Heroku account. In your terminal, run `heroku login`. The `heroku` command was installed as part of the Toolbelt, and accepts subcommands much like git. In this case, it will ask for the email and password for your Heroku account. It will also ask to upload or generate a SSH public key - press enter to accept.

After your public key has been uploaded to Heroku, check that you are logged in by running `heroku keys`. You should see an entry with your email and some random-looking numbers and letters, signaling that you're set up to use Heroku from the terminal and ready to continue to the next chapter.
