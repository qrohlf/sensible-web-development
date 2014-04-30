---
subtitle: Prerequisites
summary: Tools to set up before the first day of class
layout: default
index: 0.1
---
# Please have your environment ready by Thursday, September 4th
We're going to be using some tools that you probably haven't run across yet in this course, so please find some time before the first lab class to get your environment set up.

While I highly recommend that you use a machine that you own and have full control over for this class (i.e. your laptop), all of this *should* work just fine on the Maclab computers.

## Operating System

You will need to have a Unix-based OS (OSX or Ubuntu  recommended) on your machine for this course. 

- If you're a Mac user and have OSX 10.8 or 10.9 installed, you're good to go (here's [how to check your version of OSX](http://support.apple.com/kb/ht1633))
- If you're a Windows user, you should install Ubuntu 14.04 LTS to a secondary partition. You can download a free Ubuntu installer image [here](http://www.ubuntu.com/download/desktop/), and an installation guide [here](http://www.ubuntu.com/download/desktop/install-ubuntu-desktop).
- I will be available to help troubleshoot Linux install issues after the first class on Tuesday (Sep. 2).

## OSX only - Homebrew

[Homebrew](http://brew.sh/) is a package manager for OSX. It's incredibly helpful for setting up a development environment, and is required if you plan to use OSX for this course.

To install it, paste this into your terminal:

```sh
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

## Ruby

We will be using Ruby version 2.1.1 in this class. The best practice for installing Ruby is to bypass your system package manager and install it with a seperate tool like rbenv or RVM. Follow the instructions in the [next section](2-installing-ruby.html) to get set up with rbenv, Ruby 2.1.1, and bundler.

## Sqlite

Sqlite is a great filesystem-based database that's useful for local development. You'll need it installed for the database portion of the class.

### OSX

OSX 10.8 and 10.9 ship with a version of sqlite3 that's sufficiently up-to-date for our purposes. You can verify that it's installed by running `sqlite3 --version`.

### Ubuntu

On Ubuntu, you'll need to install  sqlite with apt: 

``` sh
sudo apt-get install sqlite3
```