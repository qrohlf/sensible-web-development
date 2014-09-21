---
subtitle: Ruby & Sinatra
summary: An introduction to two powerful tools
layout: intro
index: 1

date:
    September 11

overview:
    This week focuses on introducing the concepts of server-side HTML generation, HTTP requests, and basic Ruby and Sinatra syntax. In this chapter, you'll find some helpful tips on how to read and write file with Ruby, how to write a simple GET request

reading:
    Please watch [this screencast](https://www.destroyallsoftware.com/talks/wat) and complete the interactive lesson at http://tryruby.org/ **before class**.


    After class, you will probably want to read the sections on Routes, Conditions, and Static Files in the [Sinatra Readme](http://www.sinatrarb.com/intro.html). You may also want to check out the [MDN HTML Form Guide](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms) ([section 1](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/My_first_HTML_form) and [section 5](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/Sending_and_retrieving_form_data) are particularly relevant).

due:
    You should have [Lab 0](/chapters/0/0-setup.html#assignment) completed before class.

workshop:
    Introduction to web application development

assignment:
    title: "Lab 1: MVC Todo"
    summary: We will be rewriting our static todo HTML page as a Sinatra application. Our app will read in a list of todo items from a text file and then render them as HTML when it recieves a GET request from the browser.
    requirements:
        - Your app should be able to read in a list of todo items with optional due dates from a text file
        - It should respond to GET requests at the site root with an HTML representation of your todo list with no syntax errors
        - It should use a view template for rendering the html
        - It should have a form for submitting new todo items to the server via a POST request.
        - Your app should be in the root directory of your git repository.
        - You should remove any files that are not a part of your app from your git repo before submitting it.
    due: before next week's class
    tag: v0.1.0
---
