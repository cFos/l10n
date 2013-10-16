cFos translation files
======================




Instructions:
-------------

Just translate the English parts in between the characters `"`

for the language key
```word_new = "New";```

the French translation is:
```word_new = "Nouveau";```

You can ignore lines that start with `//` or `/`
These are just comments


### Typical errors

Please, be accurate with endings and quotes - proper formatting is very important for us!
Here is some typical errors:

wrong: `string = "content"`
right: `string = "content";`

wrong: `string = content;`
right: `string = "content";`

wrong: `string = "content with a "quote"";`
right: `string = "content with a \"quote\"";`

wrong: `string = "backslash: \";`
right: `string = "backslash: \\";`

If you're using [Syntax highlighting](#syntax-highlighting) with errors detection - most part of those errors will be highlighted with red, so it will be much easier to avoid any mistakes in markup formating.


### Do no translate

The following words should be remained untranslated:

* `Traffic Shaping`
* `cFos Software GmbH`
* names of the software


### Translation reference

For some languages we have translations references. You can find them in list above. It contains typical, unified and recommended translation variants for certain words and phrases. 
If there is available translation reference for your language - please, use it.

* [Russian translation reference](https://github.com/ArmorDarks/cfos-translation/blob/master/%23%20Translation%20reference%20-%20russian.md)

*Note: if you'll find any errors, wrong or inaccurate translation in referencing files - please, let us know. Thanks*


### HTML-tags

While translation you'll probably notice a lot of html-tags. Those are, for example, `<a href="...">` and `</a>`. They are used for building page content. 

Don't be scared of it - it's quite easy language and all you have to know is how tags and closing tags works. That's it.

Here is few basic examples:

`<a href="...">Link</a>` makes link to somewhere (like this: [link](#))

`<p>Paraghraph text</a>` defines start and end of the paraghraph

`<img src="..." width="100" height="250" />` defines simply image

`<b>Bold text</b>` and `<i>Italic text</i>` makes text **bold** or *italic* respectivly

Tags can be combined to make something more complex. For example, if you'd like to make clickable image which will lead to another page, you'd simply do it like this:

`<a href="..."><img src="..." width="100" height="250" /></a>`

See how it works? You simply putting `<img>` between `<a>` `</a>` tags

If you're confused what exactly does certain tag - here is [basic cheatsheet](http://www.w3schools.com/html/html_quick.asp) with most used tags

For better expirience and easier work it's recommend to read at least about basics of html. For example, [here](http://html.net/tutorials/html/lesson3.php) or [here](http://learn.shayhowe.com/html-css/terminology-syntax-intro) or [here](http://www.wikihow.com/Learn-HTML).


### File format

Please make sure it remains an `utf-8 with BOM` text file.


### Please, REPORT:

* if you've received non-English strings, so we'll be able to fix it
* if it's hard to translate some strings (don't worry about it, it's ok)


Syntax highlighting
-------------------

It would be probably much easier to work with syntax  highlighting for cFos ml-file.

* **Sublime Text** and **TextMate**: [Syntax highlighting with markup errors detection](https://github.com/ArmorDarks/cfos-ml-syntax)


IMPORTANT:
----------
By returning the translation to us you allow us to use it in any way we
wish. In return you get a free license for cFos or cFosSpeed.
