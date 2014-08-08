---
subtitle: What Is CSS?
layout: default
index: 2.1
---

# CSS?
CSS, or Cascading Style Sheets, is a language used to modify the appearance and layout of a web page. It's a *declarative* language, meaning that you write CSS in the form of rules like "all headings should be bold" and the browser does all the work of finding all of the headings in an HTML document and making sure that they're rendered in bold type.

# Anatomy of a CSS Rule
The basic syntax for CSS is pretty simple. Here's an example CSS rule that makes the browser render all `<h1>` elements in bold type:

```css
h1 {
  font-weight: bold;
}
```

You can see that there are two required elements for a CSS rule: a *selector* (`h1` in this case) that specifies what things on a page that the rule should apply to, and a *declaration block* (The part in between the `{}`) that lists all of the styles those things should have.

## Selectors
Selectors are the building blocks of a CSS file - they allow you to "target" the things you want to change the appearance of in your CSS rule. Here are some of the most common selectors:

- *element* selectors match all instances of a certain type of HTML element. For example, the following CSS would cause all links on a page to be underlined:

    ```css
    a {
      text-decoration: underline;
    }
    ```

- *class* selectors match all of the elements with a certain class attribute. For example, the following CSS would cause all elements with the attribute `class="background-purple"` to be given a purple background:

    ```css
    .background-purple {
      background-color: #9b59b6;
    }
    ```

- *id* selectors match a single element on the page using a predefined id attribute (ids can only be used once, unlike classes). For example, the following CSS for double spaced lines would only apply to a single element with `id="main-header"`:

    ```css
    #main-header {
      line-height: 2;
    }
    ```

## Declarations
Declarations are kind of like the CSS version of paint, allowing you to apply all kinds of effects and transformations to a document. You've already seen some examples of declarations which change a document's fonts, typesetting, and backgrounds.

CSS declarations take the form of a *property* followed by a `:` and a *value*.

There are [a lot](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference) of CSS properties that can be used in declarations, and we're not going to go too in-depth on all of those properties in this class. My recommendation is to either google what you are trying to do (i.e. ["how to make text italic in css"](https://www.google.com/#q=how+to+make+text+italic+in+css)), or find a website that does the same thing and use your browser's [debugging tools](http://localhost:4000/chapters/2/3-debugging-css.html) to see how they've done it.

# CSS Reference Materials

<div class="alert alert-info">A quick note: technically, CSS can be used to style <em>any</em> type of XML-based document (for example, SVG files can be styled with CSS). However, the most common use for CSS is to apply styles to HTML.</div>
