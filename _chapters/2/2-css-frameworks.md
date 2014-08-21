---
subtitle: CSS Frameworks
summary: CSS the easy way
layout: default
index: 2.2
---

CSS Frameworks are libraries of premade CSS designed to make developing websites that look good faster and easier. With them, you can set up complex visual layouts without ever writing a single line of CSS by hand. For example, this site uses the [Bootstrap](http://getbootstrap.com) CSS framework to handle its layout and style the sidebar and buttons.

# Why CSS Frameworks?

The biggest advantage to using a CSS framework is ease of development. When you're using one of the major frameworks, you have a large array of code that's been written and tested for you. Typically, code from a framework will be more robust and perform better on a wide variety of screen sizes and devices than code written by a single developer. There are, of course, drawbacks - frameworks can be hard to customize, and if you aren't careful you can end up building a website that looks and feels exactly like every other site that uses your chosen framework.

<br />
<div class="panel panel-info">
  <div class="panel-heading">Some Pros and Cons of CSS Frameworks</div>
  <table class="table">
    <thead>
      <tr>
        <th>Pros</th>
        <th>Cons</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Speeds up development</td>
        <td>Can make your site look unoriginal</td>
      </tr>
      <tr>
        <td>Tested code</td>
        <td>Sometimes unwieldy to customize</td>
      </tr>
      <tr>
        <td>Design is done for you</td>
        <td>Can bloat your markup</td>
      </tr>
      <tr>
        <td>Grid-based design</td>
        <td>Learning curve</td>
      </tr>
    </tbody>
  </table>
</div>


# Some Options

There are literally [dozens](http://usablica.github.io/front-end-frameworks/compare.html) of front-end frameworks out there. However, the two most popular and feature-complete frameworks are Bootstrap and Foundation. If you're considering using a framework for your project, I suggest trying one of these two. Here's a little background to help you choose:

## [Bootstrap](http://getbootstrap.com)
Bootstrap was created by Twitter and quickly became the most popular front-end framework on the Web. It has excellent documentation and a large number of components, including a built-in library of icons, javascript-based dropdowns and toggles, and a basic color theme.

Bootstrap is the best framework out there for getting started quickly, but to customize it you'll really need to learn how to use CSS preprocessors. Customizing the look of Bootstrap's compiled styles by overriding with CSS gets messy fast; it's much cleaner to edit the actual source code of Bootstrap itself and then "recompile" it with a CSS preprocessor.

You can see a simple example of how to integrate Bootstrap into an app in the `v0.2.0` release of the [example repo](https://github.com/qrohlf/webdev-examples/commit/b988b5788fdbe037f316445e9ac21ed83b59fd2d). 

## [Foundation](http://foundation.zurb.com)
Foundation is the second most popular front-end framework. Where Bootstrap is intended as a complete visual toolkit that includes components for nearly every UI element that you can think of, Foundation is intended as more of a starting point that you can use to build off of. It's much more minimal than Bootstrap, leaving most of the colors, styling, and typography up to the developer to customize.

Foundation is a good choice if you want to have more control over the look and feel of your site and don't mind spending some extra time tweaking colors and customizing fonts yourself.

# A Note about Preprocessors

While Bootstrap and Foundation both provide CSS files that you can download and use, both projects actually are written in a preprocessor language and then *compiled* to CSS. CSS preprocessors are advanced tools which allow developers to use more complicated logic in their styles like functions, variables, loops, and inheritance and then compile the styling down to plain old CSS that the browser can understand.

If you're interested in learning more about CSS preprocessors you should come talk to me during office hours!
