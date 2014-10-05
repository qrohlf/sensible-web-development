---
subtitle: Deployment Concepts
summary: Some key terms, and what they refer to
layout: default
index: 5.1
---

# Key Terms in Deployment

In order to talk about how to get your app running on a server, there are a few concepts we need to go over first. Make sure that you understand the following explanations before continuing with this chapter.

## Client

The term *client* refers to the computer that is viewing a web page. A client can be anything running a web browser - laptops, smartphones, tablets, even [refrigerators](https://www.google.com/search?client=safari&rls=en&q=smart+fridge&ie=UTF-8&oe=UTF-8).

## Server

The term *server* refers to whatever is generating a web page. So far, you've been running your application on your own machine - making it both the client and the server. However, because your computer isn't set up to handle incoming connections, your application has only been available on one machine. By *deploying* your application to a server that's always online and accepting incoming connections from the Internet, you can make it so that your application is available on any machine with Internet access.

## Production

The word *production* is often used to refer to the code or setup on the server (as opposed to the *development* code or setup on your computer). 

## Git Remotes

One thing you may have noticed while working with git in this class is that we've been using the word `origin` to refer to GitHub. `origin` is an example of a *git remote* - an external location that git is aware of and able to upload code to. By convention, we're using the name `origin` to point to the main remote server where we store our code (in this case, GitHub). Git, however, is capable of working with multiple remotes. In this chapter, we will use a git remote to keep the code that's running on our server in sync with the code on our machine.

## Environment Variables

Sometimes an application needs to behave differently based on where it's running - for example, it's convenient for us to use a SQLite database while developing our app locally, but when we upload it the same code to our new server it will need to use a different database implementation. A common solution to this problem is to use *environment variables* - special variables that are set on the server that an application is running on instead of inside the application itself. The application can then use these variables to change its behavior at runtime. We will use environment variables to make our app use a different database when it's deployed to the server.
