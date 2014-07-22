---
subtitle: Ruby File Library
layout: default
index: 1.2
---
# Working with Files

The Ruby core library is one of the most powerful aspects of the language. It's very fully-featured, and it's much rarer to find yourself "reinventing the wheel" when working in Ruby when compared to many other popular programming languages. For the first lab, you'll need to know how to use Ruby's `File` class and string manipulation methods to read in a list of todo items from a text file.

The [Ruby Core Library Documentation](http://www.ruby-doc.org/core-2.1.2/File.html) should be your first stop when you have questions on how to use one a built-in class in Ruby. Here's the section on the `File` class: http://www.ruby-doc.org/core-2.1.2/File.html

Take a minute to read the introduction on that page and look at some of the methods listed on the left. You'll notice that it's pretty barebones - you'd have trouble figuring out how to use the `File` class from this page alone. That's because `File` inherits most of its functionality from the `IO` class. You can get to *that* documentation by clicking the link in the "Parent" box on the left hand side of the `File` page, or by going to http://www.ruby-doc.org/core-2.1.2/IO.html

Here's a quick example of a few ways you can manipulate files with Ruby. You can even paste it into `irb` to try it out!

**memes.txt contents:**

```
Top Memes by Year
2014 - What Does The Fox Say
2013 - Harlem Shake
2012 - Gangnam Style
2011 - Friday
2010 - Old Spice Guy
```

**file_example.rb**

```ruby
#!/usr/bin/env ruby
 
# Read the file into a string
file_contents = File.read('memes.txt')
 
# Split those lines into an array
lines = file_contents.split("\n")
 
# You could also do the same thing in one step with File.readlines, 
# but note that File.readlines will keep newlines whereas split strips them
unless File.readlines('memes.txt') == lines
  puts "readlines works, too - but it keeps newlines so it's a bit different!" 
end
 
# Let's grab the title using Array's shift method, which will remove it from the array
# This is also a good time to try out ruby string interpolation (i.e. the #{} stuff)
puts "title: #{lines.shift}"
 
# Okay, now we can iterate through the lines of the file 
lines.each do |line|
  # You can totally assign multiple values at once from an array return value in Ruby!
  year, meme = line.split("-")
  # and here we have some more string interpolation
  puts "meme for #{year}: #{meme}"
end
```

*(The above code is also available for download as a [gist](https://gist.github.com/qrohlf/68ea125caf2b57eeda19))*

That should be enough to get you started! You'll probably find the [`new`](http://www.ruby-doc.org/core-2.1.2/IO.html#method-c-new),  [`read`](http://www.ruby-doc.org/core-2.1.2/IO.html#method-c-read), [`readlines`](http://www.ruby-doc.org/core-2.1.2/IO.html#method-c-readlines),  and [`each_line`](http://www.ruby-doc.org/core-2.1.2/IO.html#method-i-each_line) methods from the IO documentation are quite relevant and useful for this assignment, so I suggest reading the docs on those.