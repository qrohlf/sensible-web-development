---
subtitle: Prerequisites
summary: Tools to set up before the first day of class
layout: default
index: 0.2
---
# Please have your environment ready by Thursday, September 4th
We're going to be using some tools that you probably haven't run across yet in this course, so please find some time before the first lab class to get your environment set up.

While I highly recommend that you use a machine that you own and have full admin access to for this class (i.e. your laptop), all of this *should* work on the Maclab computers.

## Operating System

You will need to have a Unix-based OS (OSX or Ubuntu  recommended) on your machine for this course. 

- If you're a Mac user and have OSX 10.8 or 10.9 installed, you're good to go (here's [how to check your version of OSX](http://support.apple.com/kb/ht1633))
- If you're a Windows user, you should install Ubuntu 14.04 LTS to a secondary partition. You can download a free Ubuntu installer image [here](http://www.ubuntu.com/download/desktop/), and an installation guide [here](http://www.ubuntu.com/download/desktop/install-ubuntu-desktop).
- I will be available to help troubleshoot Linux install issues after the first class on Tuesday (Sep. 2).

## Overview

We will be using the following tools and libraries in this course

- Git
- Ruby 2.1.1
- Bundler
- Sqlite3

# OSX Setup

### Homebrew

[Homebrew](http://brew.sh/) is a package manager for OSX. It's incredibly helpful for setting up a development environment, and is required if you plan to use OSX for this course.

To install it, run this in your terminal:

```sh
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

### Git
OSX comes with an older version of Git. It's fine for our purposes, but if you want to have the newest version you use Homebrew to upgrade Git with `brew install git`.

### Sqlite3
OSX 10.8 and 10.9 come with a version of sqlite3 that's sufficiently up-to-date for our purposes. You can verify that it's installed by running `sqlite3 --version`.

### Ruby and Bundler
See the next section for instructions on how to install Ruby and Bundler.

# Ubuntu Setup

### Git

You can install Git on Ubuntu via apt:

```sh
sudo apt-get install git
```

### Sqlite3

On Ubuntu, you'll need to install  sqlite with apt: 

``` sh
sudo apt-get install sqlite3
```

### Ruby and Bundler
See the next section for instructions on how to install Ruby and Bundler.