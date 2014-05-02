---
subtitle: Ruby and Sinatra
layout: default
index: 1
is_intro: true
---

# Week 1: Up & Running with Ruby and Sinatra
*Lab date: September 11*

## Overview
This week focuses on introducing the concepts of server-side HTML generation, HTTP requests, and basic Ruby and Sinatra syntax. In this chapter, you'll find some helpful tips on how to read and write file with Ruby, how to write a simple GET request

## Reading
Please complete the interactive demos at http://tryruby.org/ and http://try.github.io before class. This should take about an hour.

## Due
You should have [Lab 0](/chapters/0/0-setup.html#assignment) completed.

## This Week's Assignment
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Lab 1: Sinatra Todo</h3>
  </div>
  <div class="panel-body">
    <p>We will be rewriting our static todo HTML page as a Sinatra application. Our app will read in a list of todo items from a text file and then render them as HTML when it recieves a GET request from the browser.</p>
    <h3>Requirements:</h3>
    <ul>
      <li>Your app should be able to read in a list of todo items with optional due dates from a text file</li>
      <li>It should respond to GET requests at the site root with an HTML representation of your todo list that passes <a href="http://validator.w3.org">the w3c validator</a>.</li>
      <li>It should have a form for submitting new todo items to the server via a POST request.</li>
    </ul>
    <h3>Due Date:</h3>
      <p>You should have your code pushed to GitHub and tagged with `v0.1.0` by the beginning of next week's lab class</p>
    </div>
    <div class="panel-footer">
      <p>Git tag to use for this assignment: <code>v0.1.0</code></p>
    </div>
  </div>
</p>