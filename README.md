## README

This is my first ever web challenge.

Before diving into this challenge, some concepts that you may need to understand include but are not limited to the following:

- Javascript
- SQL Injection
- HTTP and APIs
- Scripting

###WALKTHROUGH

Here I will briefly explain how to complete this challenge. At first login, you are presented with a login screen saying that only the admin user may login. In a web challenge, the first step is always to look at the source code if not enough information has been given to you.

You will find a Javascript function called validateForm() that is called when the form is submitted. After more analysis you find out that if you scroll down, you end up finding the source code. I wonder how that got there?

SQL injection is the next step to solving this problem. Using Chrome Dev tools, you can disable JS and enter admin'; -- in the username field.

Once you are in, you are prompted with an API key, a link, and another hint. 
