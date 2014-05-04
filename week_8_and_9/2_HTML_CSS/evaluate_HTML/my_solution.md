## Evaluate a Website! 
 
1) How does this website follow HTML Best Practices? Are there any places where 
it does not?  Provide examples of the "bad" code.

It largely follows best practices, though I noticed a few violations:

-some styling occurs inline (height of table elements, for example)
-Javascript files are at the top, rather than the bottom; a Javascript function is inline
-the use of two table rows for each one article makes the code a little hard to read
 
2) What do you think of the HTML? Did the writers use IDs and Classes properly? 

-The use of IDs and classes seems OK from the vantage point of a beginner, though the use of table rows (2 for each article; one for the article, the other for votes/comments) adds a lot of complexity.

Did you like the way they used HTML tags?  Please use examples with your arguments.
 
3) How did the authors handle formatting? Did they include it in the HTML or 
separate it into a CSS file? Or did they do both?  Again, include examples.
 
-the authors pushed much of the formatting to the stylesheet, however spelling out the table row heights and alignment of elements within tables in the html file seems a bit onerous. Why not style the two different tables in the stylesheet?

4) Did the authors include anything you didn't immediately understand? 
If so, what?

-I didn't completely understand the Javascript at the top of the index file: how does ping server work? Why include a function in the html file?
 
5) How did the authors organize the CSS file? Was it DRY?
 
-The stylesheet could be more dry. ".default" and ".title", for example, share the same attributes: why not list them to save some space? There are several instances where this is the case.

6) Did the authors incorporate any responsive design into the site?
 
-The authors did include some responsive design: in widths/height of several elements at a percentage rather than an absolute amount.

7) What are your overall thoughts on the HTML/CSS from this website based on 
what you've read?

-There are some things that could be made more readable from a code perspective, but the site is meant to be stripped-down and straightforward (I dunno, maybe even intentionally kind of a throwback?), so from that vantage point I think it works just fine.

####Reflection
Finding and installing Sublime HTML Prettify was awesome--it immediately allowed me to clean up the giant block of HTML.
Examining Hacker News was also enlightening. It's not a shiny, sleek site but it is starkly utilitarian, which I like for this specific purpose. I'd be interested to hear what the philosophy is behind it and why they've elected to stick with this layout.
Overall, I can look at the HTML and CSS and get the gist of what is going on but I know I need to spend a lot more time examining sites, emulating them, then building my own.