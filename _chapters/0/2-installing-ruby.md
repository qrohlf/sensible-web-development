---
subtitle: Installing Ruby
layout: default
index: 0.2
---

# Install Ruby
There are lots of different ways to install Ruby or update your Ruby version. Most linux distributions include a ruby package in their built-in repositories; however it is unlikely that this package is kept up-to-date with the latest version of Ruby. Most Ruby developers use a seperate tool like [RVM](https://rvm.io) or [rbenv](https://github.com/sstephenson/rbenv#how-rbenv-hooks-into-your-shell) to manage their Ruby versions.

For this class, we will use rbenv with the ruby-build and rbenv-gem-rehash plugins to install and manage Ruby versions. I'll show you how to install and use those tools here.

## rbenv on OSX
If you're on OSX, you can install all three of these things with Homebrew (and if you don't have Homebrew yet you should go [install that now](http://brew.sh)).

```bash
brew install rbenv ruby-build rbenv-gem-rehash
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
```

## rbenv on Ubuntu
If you're on Ubuntu, you'll need to install rbenv manually. Follow these instructions:

1. Check out rbenv into `~/.rbenv`.

	``` sh
	$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
	```

2. Add `~/.rbenv/bin` to your `$PATH` for access to the `rbenv`
   command-line utility.

	``` sh
	$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
	```

3. Add `rbenv init` to your shell to enable shims and autocompletion.

	``` sh
	$ echo 'eval "$(rbenv init -)"' >> ~/.profile
	```

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.) Now check if rbenv was set up:

	``` sh
	$ type rbenv
	#=> "rbenv is a function"
	```

5. clone the ruby-build and rbenv-gem-rehash repositories to finish the install:

	```bash
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
	git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
	```

## Installing & Using a New Ruby Version (OSX and Ubuntu)
Once you've got rbenv installed, you can install a new Ruby version with a single command:

```bash
rbenv install 2.1.1 #install Ruby 2.1.1
```
*note that you can see a list of all the available Ruby versions by running `rbenv install --list`*

You can then set your system to use the new Ruby version by default with

```bash
rbenv global 2.1.1
```

You can also specify your ruby version for a specific project

```bash
cd ~/path/to/my/project
rbenv local 2.1.1
```

When using a new Ruby version for the first time, you'll probably want to install Bundler for that Ruby version:

```bash
gem install bundler
```

Once you think you have everything working, verify that `ruby -v` outputs `ruby 2.1.1` and you're done!
