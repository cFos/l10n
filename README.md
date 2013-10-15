cFos translation files
================

Simply translate the missing keys for your language and send back the file.
Please make sure it remains an utf-8 with BOM text file.

Just translate the English parts in between the characters "

Example:
--------

for the language key
```word_new = "New";```

the french translation is:
```word_new = "Nouveau";```

You can ignore lines that start with `//` or `/`
These are just comments

Please, be accurate with endings and quotes - proper formating is very important for us!
Here is some typical erros:

wrong: `string = "content"`
right: `string = "content";`

wrong: `string = content;`
right: `string = "content";`

wrong: `string = "content with a "quote"";`
right: `string = "content with a \"quote\"";`

wrong: `string = "backslash: \";`
right: `string = "backslash: \\";`

Do not translate the following words:
* "Traffic Shaping"
* "cFos Software GmbH"
* names of the software

Please, REPORT:
* if you've received non-egnlish strings, so we'll be able to fix it
* if it's hard to translate some strings (don't worry about it, it's ok)

IMPORTANT:
----------
by returning the translation to us you allow us to use it in any way we
wish. In return you get a free license for cFos or cFosSpeed.
