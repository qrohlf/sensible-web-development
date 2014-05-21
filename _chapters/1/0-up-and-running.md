---
subtitle: Ruby and Sinatra
layout: intro
index: 1

date: 
    September 11

overview: 
    This week focuses on introducing the concepts of server-side HTML generation, HTTP requests, and basic Ruby and Sinatra syntax. In this chapter, you'll find some helpful tips on how to read and write file with Ruby, how to write a simple GET request

reading:
    Please complete the interactive lesson at http://tryruby.org/ and read the sections on Routes, Conditions, Static Files, and the View/Templates intro in the [Sinatra Readme](http://www.sinatrarb.com/intro.html) before class. 

due:
    You should have [Lab 0](/chapters/0/0-setup.html#assignment) completed before class.

workshop:
    Up and Running with Ruby and Sinatra

assignment:
    title: "Lab 1: Sinatra Todo"
    summary: We will be rewriting our static todo HTML page as a Sinatra application. Our app will read in a list of todo items from a text file and then render them as HTML when it recieves a GET request from the browser.
    requirements: 
        - Your app should be able to read in a list of todo items with optional due dates from a text file
        - It should respond to GET requests at the site root with an HTML representation of your todo list that passes <a href="http://validator.w3.org">the w3c validator</a>.
        - It should have a form for submitting new todo items to the server via a POST request.
    due: before next week's class
    tag: v0.1.0
---