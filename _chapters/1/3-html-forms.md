---
subtitle: Submitting Data
layout: default
index: 1.3
---
# Getting User Data

Once you have a way to read and display your data, you'll need to implement a way to take data from the user and append it to the file. To do this, we'll use an HTML form! The [MDN Guide to HTML forms](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/My_first_HTML_form) is an excellent and comprehensive resource on how to write and use HTML forms. The example on this page is just a basic implementation to get you started - reading the MDN article is highly recommended!

For our purposes, we'll need to collect two pieces of data: the task, and an optional due date. Here's what the form for that looks like: 

```html
<form action='/' method='POST'>
  <strong>New Task:</strong>
  <input type='text' name='task' placeholder='task content' />
  <input type='text' name='date' placeholder='due date' />
  <input type='submit' value='Save'>
</form>
```

We've defined a `<form>` element that will send the data that's entered into it to the `/` route via an HTTP POST request. (For more on POST requests, see [this article](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Forms/Sending_and_retrieving_form_data)). That's all we need in our view for this to work - all of the heavy lifting will happen on the server when the POST request is received. Once you've got the hang of defining HTML forms, head over to the next section to see how to handle the data in your app.