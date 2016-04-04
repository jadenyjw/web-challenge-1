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

Navigating to /api/v1/secrets you are presented with access denied. Knowing that, you must set the Authorization Token header to the key that you received earlier. My preferred tool is to use curl and use the -H flag to set the header.

Once you run the command, it responds that the API is not available through HTML. Knowing that, we know that most APIs interface with JSON rather than HTML. Once again, we go back to curl and set another header for JSON format.

After running that command, you are presented with a wall of text that includes the IDs of many items. A feature that Rails does as a resource is that if you add the ID to a URL (such as /api/v1/secrets/222), you call a different show action that regards with 1 specific "item" rather than an action that displays everything.

However, the problem is that there are thousands of IDs and calling them manually and finding the string "flag" in each of them would definitely be time wasting. 

This is where scripting comes in. Bash is an ideal choice since you can keep using curl but you may prefer other languages such as Python.

Running the script would take a few minutes until you finally reach the flag at ID 1666 and flag being y0um4de1t.
