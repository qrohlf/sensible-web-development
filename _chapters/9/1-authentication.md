---
subtitle: Authentication
summary: How to add a login feature to your app
layout: default
index: 9.1
---

# What We Covered In Class

Here's a quick bullet-points reminder of the important concepts from the lecture:

- To authenticate a user with a username and password securely, we need to *hash* their password before storing it in the database.
- To prevent a user from having to send their username and password with every request, we need to use a *session cookie* to store a *token* that allows us to identify them as a logged-in user.
- To prevent someone from being able to login as another user by spoofing the session cookie token, we need to *encrypt* the session cookie. (Fortunately, Sinatra does this for us!)

# Code Example

A cleaned-up version of the code from class has been posted to [https://github.com/qrohlf/webdev-examples](https://github.com/qrohlf/webdev-examples/tree/v0.7.0) (and tagged with `v0.7.0`).

If you're interested in implementing user login in your final project, I highly recommend reading the `app.rb` file from the example app in it's entirety. I've added extensive comments explaining the ins and outs of implementing a simple login system with Sinatra.

# Further Reading

This version of the app introduces a few new concepts: Rack sessions, ActiveRecord `has_secure_password` methods, and ActiveRecord validations.

- To learn more about using Rack sessions with Sinatra, see the [Sinatra README](http://www.sinatrarb.com/intro.html#Using%20Sessions).
- To learn more about the `has_secure_password` features for ActiveRecord, see the [Rails documentation](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html).
- To learn more about ActiveRecord validations, see RailsGuides [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html) chapter.