cFos translation files
======================

Welcome to repository of [cFos Software GmbH](http://cfos.de) ml-files which contains all translations of cFos [website](http://cfos.de) and cFos software (cFosSpeed, cFos Personal Net, cFos Professional and other).

If you're here — you've probably received file with untranslated strings. In that case simply head to the [Translation section](#translation) where you can find translation instructions and recommendations. Though, it's worth mentioning that in ml-files of repository you can find already translated strings for your language. While they can be far from perfect, they can be used for any translation references and maybe will help you while translating or proofreading.

If you're here for unknown reason, or want to post an issue or pull request with improved or translated strings — feel free to look around and make yourself at home :)

In case of any questions — please, contact us with any suitable for you method on [cFos website](http://cfos.de) via `Contact/Support` button or via [Github issues](https://github.com/ArmorDarks/cfos-translation/issues)


List of content
------------------

1. [Intro](#cfos-translation-files)
2. [List of content](#list-of-content)
3. [How to participate](#how-to-participate)
    1. [Report wrong or inaccurate translation](#report-wrong-or-inaccurate-translation)
    2. [Participate in translation or proofreading](#participate-in-translation-or-proofreading)
4. [Instructions](#instructions)
    1. [Quick overview](#quick-overview)
    2. [How to find your language](#how-to-find-your-language)
        1. [Languages IDs](#languages-ids)
    3. [Translation](#translation)
        1. [Strings structure](#strings-structure)
          1. [Usual strings](#usual-strings)
          2. [Comments](#сomments)
        2. [Escaping](#escaping)
        3. [Files naming convention](#files-naming-convention)
        4. [General recommendations](#general-recommendations)
        5. [Typical errors](#typical-errors)
        6. [Do not translate](#do-not-translate)
        7. [Translation reference](#translation-reference)
        8. [HTML-tags](#html-tags)
        9. [HTML entities](#html-entities)
        10. [File format](#file-format)
        11. [Report](#please-report)
5. [Syntax highlighting](#syntax-highlighting)
6. [Important](#important)


How to participate
------------------

If you're willing to help us there are two possible scenarios:


### Report wrong or inaccurate translation

If you found wrong, inaccurate or offending translation — please, let us know. You can do it by:

* opening issue in [Github issues](https://github.com/ArmorDarks/cfos-translation/issues) section;
* contacting us on [cFos website](http://cfos.de) via `Contact/Support` button;
* making Pull Request by your own (for advanced git users only).

Regardless of your choice, please, provide us with all necessary information so we'd be able to fix it:

* Where did you found wrong translation (certain software or section of cFos website);
* What exactly translated wrongly or inaccurate.

Those information would be enough for us to detect issues and fix it with help of one of our translating volunteers. However, in case you have time it won't hurt to let us know how those translations can be fixed or how it's quality can be improved.

Most active users will be rewarded with free cFos software license (cFosSpeed, cFos Personal Net or cFos Professional), and our top contributors have chances to be putted in [Hall of Fame](https://www.cfos.de/en/contact/hall-of-fame.htm).

Anyway, we'd be thankful for any help :)


### Participate in translation or proofreading

List of languages which are currently "in work" and for which we're searching volunteers can be found here: [Free product key](http://www.cfos.de/en/contact/gratis.htm). If you didn't manage to find your language in that list — don't be upset. Simply contact us and we'll figure it out together.

If you'd like to participate in translation of cFos website or software onto your native language and by doing this receive free cFos software license (cFosSpeed, cFos Personal Net or cFos Professional), please, choice one of possible ways:

* **(recommended)** Contact us on [cFos website](http://cfos.de) via `Contact/Support` button:

  Don't forget to put in title of email "Translation". In that case we'll send you individual file with strings that should be translated onto your native language. By doing it you'll receive free license.

* **(not recommended)** Make translation by your own and then make Pull Request (for advanced git users only):

  You can extract untranslated strings from ml-files by you own, translated them and make Pull Request. Please, keep in mind that it's not recommended scenario, because it would be much harded for your to extract proper untranslated strings, besides you don't know which strings are currently "in work", by this getting into situation when you translation will be overwritten by already working translator. Though, it's still possible if you'd like to work in such way. In that case we'd recommend at least to make us know that you're working over certain section by contacting us on [cFos website](http://cfos.de) via `Contact/Support` button.

Minimal number of translated string to receive free license is about *100-200 strings* (quantity heavily depends on length of strings).

We'd be thankful for any help. To remark importance of our top contributors and express our thankfulness to them we have [Hall of Fame](https://www.cfos.de/en/contact/hall-of-fame.htm).


Instructions:
-------------

### Quick overview

The main point of interest for you is **ml-files**. As already was mentioned, they contain all translations from cFos website and cFos software.

For easier experience, they are split into two files:

* `[website] all_ml.cfos.txt` — contains all website translations
* `[software] all_ml.cfos.txt` — contains all software translation (like cFosSpeed, cFos Personal Net, cFos Professional and other)

Other interesting files for you can be found in [Translation references](https://github.com/ArmorDarks/cfos-translation/tree/master/translation%20references) folder. It contains general recommendations for translation on certain languages.

Other files in repository are rather technical, so we'd recommend simply to ignore them:
* `# [website] status.md` and `# [software] status.md` contains some statistics about translation. They are not updated very frequently, so don't rely on them;
* `pending` folder contains strings, which have to be updated. Please, ignore them, because they serve simply as our internal notes regarding workflow;
* `my` folder contains few personal translations and will be removed from this repository soon.


### How to find your language

ML-files contain all translation of all languages at once. Thus, it can be sometime tricky to find section with your language.

To make it a bit easier, we'd recommend to use `Search` function of your text editor.

Here is how it work:

* Open `Search` (usually it can be called by pressing `ctr+f`);
* Type `#language {your language id}`;
* Hit enter and your text editor will take you to the start of the desired language section.

For example, `#language 1033` will take you to the start of English language section which is basic referencing language for all other languages.


#### Languages IDs

Here is list of most popular languages IDs for easier access:

|  id  |                     language                    |
| :--: | ----------------------------------------------- |
| 1025 | Arab (Egypt)                                    |
| 1028 | Chinese Traditional (Taiwan)                    |
| 1029 | Czech                                           |
| 1031 | German (Germany)                                |
| 1032 | Greek                                           |
| 1033 | English (USA)                                   |
| 1034 | Spanish (Traditional Sorting)                   |
| 1036 | French (France)                                 |
| 1038 | Hungarian                                       |
| 1040 | Italian (Italy)                                 |
| 1041 | Japanese)                                       |
| 1042 | Korean                                          |
| 1043 | Dutch                                           |
| 1045 | Polish                                          |
| 1046 | Portuguese Brazilian                            |
| 1048 | Romanian                                        |
| 1049 | Russian                                         |
| 1053 | Swedish                                         |
| 1054 | Thai                                            |
| 1055 | Turkish                                         |
| 1057 | Indonesian                                      |
| 1059 | Belarusian                                      |
| 1060 | Slovenian                                       |
| 1066 | Vietnamese                                      |
| 1071 | Macedonian (FYROM)                              |
| 2052 | Chinese Simplified (People's Republic of China) |
| 2057 | English (Great Britain)                         |
| 2058 | Spanish (Mexico)                                |
| 2070 | Portuguese                                      |

Complete list of all language identifiers can be found [here](http://msdn.microsoft.com/en-us/library/windows/desktop/dd318693).

*Note: if you're unsure which ID belongs to yours language — please, do not hesitate to contact us. Thanks*


### Translation

Just translate the English parts in between the characters `"`

For example: 

for the language key `word_new = "New";`

the French translation is: `word_new = "Nouveau";`

You can ignore lines that start with `/` or `//`. Those are just comments.


#### Strings structure

To make it easier for you to work with language strings, we'll overview their structure briefly.

There are to types of strings:

* **Usual strings**

 For example, `pnet_doc_ov_h5a = "Calendar synchronisation with CalDAV";`;

* **Comments** — strings, which starts with `/` or `//`

  For example, `/ cfos Personal Net section`.


##### Usual strings

Usual strings are most important.

They always consist from following parts:

```
{language key} = "{string content}";
```

* `{language key}` is unique name of a strings, which helps program to distinguish it from other strings.

  It's very important to **NEVER EVER** change or alter language keys of strings, otherwise our program won't be able to identify string and add it to our master multilingual file.

  Actually, nothing bad will happen, unless it's okey for you to loose part of your work by accidentally renaming language key.

* ` = ` is assign operator. It helps our program to understand where language key is, and where it's content. Don't touch or delete it. Really.

* `"` and `";` marks string's scope, beginning and end of it's content.

  As for all parts of strings, it's very important to keep those in same way as they are. Otherwise it can blow out something to debris while adding to master file, no joke!

  Please, pay especial attention to closing `;` which placed in the end of *each* string. As it was already said, it's very important for safety of cFos office and to make all things work in proper way.

  Okey, of course it isn't so bad — all those errors will be detected before adding to master file, but being attentive will save us a lot of time. You can use [Syntax highlighting](#syntax-highlighting), which will highlight strings with improper beginning and closing tags.

  **Important exception!**

  Some software strings can have split strings, like those:

  ```
  err_os_sup = "%p supports officially only %? or higher.\n\n"
               "It is possible, but not tested by us, that %p runs also on your operating system %?.\n\n"
               "Do you wish to continue with the installation?";
  ```

  Notice that in such strings `;` placed in the end of whole string, while string divided into smaller parts by `"` at the beginning and the end.

  It isn't error and completely correct.

  Actually, that strings is completely equal to that one:

  ```
  err_os_sup = "%p supports officially only %? or higher.\n\n It is possible, but not tested by us, that %p runs also on your operating system %?.\n\n Do you wish to continue with the installation?";
  ```

  However, it's recommended not to alter existing markup, though it's possible

* `{string content}` — main part of string, intended for translation. Placed between `"` tags. 

  Please, be very accurate with it and remember that it can contain html-tags and html entities. We'll talk about those later.

Every part of string and it's formatting is **vital** for string to work properly, so, please, be very attentive to those — it will save us a lot of time.

As already mentioned, use [Syntax highlighting](#syntax-highlighting) to ease detection of any string formatting errors.


##### Comments

Those are much simpler than usual strings.

Here is example of comment:

```
/ cFos Personal Net section
```

To make comment, simply begin string with `/` or `//`. That is — so simple.

Comment can contain anything. For example, in ml-files it marks beginning of website or software sections.

The only important thing is that comment shouldn't be placed within strings content scope.

Thus, following comment will be wrong:

```
cfos_menu = "Menu / I'm not sure about it's context usage";
```

And those will be correct:

```
/ I'm not sure about it's context usage
cfos_menu = "Menu";
```

```
cfos_menu = "Menu"; / I'm not sure about it's context usage
```


#### Escaping

Sometimes you need to use `"` inside of string.

If you remember that `"` marks beginning and ending of our string, you may ask how we can let program to know that `"` right in the middle of our string isn't closing part?

For example, following string will be wrong:

```
cfos_test = "Oh, and you should taste that "perfect" hamburger!";
```

Program will think that our string is `"Oh, and you should taste that "`, which actually is only part of our string.

It happens, because program always assuming that first `"` marks beginning of string and second `"` — it's ending (which in our example occurring in the middle of string).

To solve that issue such characters should be escaped with `\`, like in this example:

```
cfos_test = "Oh, and you should taste that \"perfect\" hamburger!";
```

In our final product it will output correct `Oh, and you should taste that "perfect" hamburger!`. Note that escaping `\` does not appear in output.

Sometime you'll need to output `\` character. But how it can be done, if escaping character doesn't appear in output?

For example,

```
cfos_test = "Take a look at C:\folder";
```

will output `Take a look at C:folder`, without `\`, because program will think that `\` escaping here character `f`.

To fix it, we should escape `\` characters with `\` too, like this:

```
cfos_test = "Take a look at C:\\folder";
```

This string will output correct `Take a look at C:\folder`

Please, pay especial attention to it, otherwise it can make whole translation file wrong. It's recommended to use [Syntax highlighting](#syntax-highlighting) to detect such errors.


#### Files naming convention

If you've received file with untranslated strings from us, you're probably curious about way it's named.

That section is just for curious-one translators and doesn't contain any crucial information for translation, thus can be safely skipped at will.

Pattern is quite simple:

```
{source}__{type}__{language id}--{source language id}__{extraction date}__{translator email}.cfos.txt
```

Or maybe not so simple...

Anyway, here is typical example of file with untranslated strings:

```
sw__mk__hu--en__2014-03-18__your@email.com.cfos.txt
```

Let's explore it's parts:

* `{source}` marks place, where used those strings.
  
  For example, `sw` prefix stands for "software" and marks strings, which intended to be used in our software. Strings from website don't have any suffix at all.

* `{type}` showing type of work or strings.

  Here is complete list:

    * `mk` — missing keys.

      Marks file with strings intended for translation onto certain language (defined in `{language id}` part).

    * `pr` — proofreading.

      Strings, which should be reviewed and in case they do not represent correct translation (usually defined by English or German strings) — fixed.

    * `all` — contains all strings from certain language.

      Usually sent in pair with other strings to serve as reference.

    * `fix` — strings, that should be fixed.

* `{language id}` — showing language, on which file should be translated. In our example it's Hungarian (`hu`).

* `{source language id}` — defining source language from which were extracted those strings.

  Usually it's English (`en`) or German (`de`) languages.

  `--` prefix simply showing that it's "modification" of file. For example, in proposed example above it helps to understand, that it's untranslated from English to Hungarian file.

  After finishing translation you can safely remove `--en` part, thus making it clear that file is completely translated.

* `{extraction date}` — marks date, when strings were extracted from master file for translation.

  Actually, nothing interesting for translator here. It helps us to track changes in master-file and apply them on files with translations accordingly to those date stamps.

* `{translator email}` — helps us to keep tracking of translations history for each translator.

* `.cfos.txt` — special file extension, which triggering [Syntax highlighting](#syntax-highlighting), in case you're using one.


#### General recommendations

* If you're unsure about contextual usage of certain string — please, ask us. We'd be glad to explain literally anything regarding translation :)

* Leave comments above strings in case you want to mark anything.

  For example, like this:

  ```
  / Lacking context here. I assumed these are some kind of option, tick box, or similar.
  dlg_dun_use_ipv4 = "Utilizar IPv4";
  dlg_dun_use_ipv6 = "Utilizar IPv6";
  ```

* Use Google for searching string across the site:

  For example, to find `increase_throughput = "cFosSpeed increases your throughput and reduces your Ping.";` string on cFos site simply type in Google Search `site:cfos.de cFosSpeed increases your throughput and reduces your Ping` ([example](https://www.google.com/search?q=cfos.de+Internet+Acceleration+via+Traffic+Shaping&oq=cfos.de+Internet+Acceleration+via+Traffic+Shaping&aqs=chrome..69i57.7153j0j1&sourceid=chrome&ie=UTF-8#q=site%3Acfos.de+cFosSpeed+increases+your+throughput+and+reduces+your+Ping)).

  Don't put html-tags in search query, and keep in mind that not all strings could be found on current website. Some of them maybe used not in pure texts (for example, meta descriptions), and some could be unused in that moment.

* If you're unsure which translation it's better to use for certain words or phrases — try to google it. Usually more proper translation occurs more often than wrong. Besides you have chances to find forums with discussing about proper translation.

* Use [Google Translate](http://translate.google.com/). It might be handy in certain situation.

* Don't use [Google Translate](http://translate.google.com/) for all translation.

  Yeap, that's it. Don't use it mindlessly all over here and over there. Use it wisely as helping instrument, while *your mind* should be main translating instrument, otherwise you'll end up with machinery translation. Such translation easily detected and, unfortunately, due to poor quality we can't accept them, thus can't offer free license as reward for them.

* Use [Syntax highlighting](#syntax-highlighting) for your text editor. It will increase readability and help to avoid markup errors while translating.

* Be accurate with escapings (see [Typical errors](#typical-errors)). Wrong or absent escaping can break whole translation file!

* Pay attention to beginning and closing parts of every strings — ` = "` and `";`. Breaking those can make whole translation file wrong too.

* Be accurate with html-tags (see [HTML-tags](#html-tags)). Breaking them can lead to serius visual issues on the website.


#### Typical errors

Please, be accurate with endings and quotes — proper formatting is very important for us!

Here is some typical errors:

wrong: `string = "content"`  
right: `string = "content";`

wrong: `string = content;`  
right: `string = "content";`

wrong: `string = "content with a "quote" in it";`  
right: `string = "content with a \"quote\" in it";`

wrong: `string = "content with a \"quote\";`  
right: `string = "content with a \"quote\"";`

wrong: `string = "content with a backslash \ in it";`  
right: `string = "content with a backslash \\ in it";`

wrong: `string = "content with a backslash \";`  
right: `string = "content with a backslash \\";`

If you're using [Syntax highlighting](#syntax-highlighting) with errors detection most part of those errors will be highlighted with red, so it will be much easier to avoid any mistakes in markup formatting.


#### Do not translate

The following words should be remained untranslated:

* `cFos Software GmbH`
* names of the software
* names of companies
* sections marked with `/ no translation` or `/ do not translate` comments


#### Translation reference

For some languages we have translations references. You can find them in list above. It contains typical, unified and recommended translation variants for certain words and phrases.
If there is available translation reference for your language — please, use it.

* [Russian translation reference](/Translation%20references/Translation%20reference%20-%20russian.md)

*Note: if you'll find any errors, wrong or inaccurate translation in referencing files — please, let us know. Thanks*


#### HTML-tags

While translation you'll probably notice a lot of html-tags. Those are, for example, `<a href="...">` and `</a>`. They are used for building page content.

Don't be scared of it — it's quite easy language and all you have to know is how tags and closing tags works. That's it.

Here is few basic examples:

`<a href="...">Link</a>` makes link to somewhere (like this: [link](#))

`<p>Paraghraph text</p>` defines start and end of the paragraph

`<img src="..." width="100" height="250" />` defines simply image

`<b>Bold text</b>` and `<i>Italic text</i>` makes text **bold** or *italic* respectively

Tags can be combined to make something more complex. For example, if you'd like to make clickable image which will lead to another page, you'd simply do it like this:

`<a href="..."><img src="..." width="100" height="250" /></a>`

See how it works? You simply putting `<img>` between `<a>` `</a>` tags

If you're confused what exactly does certain tag — here is [basic cheatsheet](http://www.w3schools.com/html/html_quick.asp) with most used tags

For better experience and easier work it's recommend to read at least about basics of html. For example, [here](http://html.net/tutorials/html/lesson3.php) or [here](http://learn.shayhowe.com/html-css/terminology-syntax-intro) or [here](http://www.wikihow.com/Learn-HTML).


#### HTML entities

During translation you may also notice strange words like `&lt;`, `&gt;` or even `&#8364;`

Those aren't errors — those are **HTML entities**.

Those entities converted into special characters in final product.

For example:
* `&lt;` will appear as `<`;
* `&gt;` will appear as `>`;
* `&#8364;` will appear as `€`.

HTML entities can be freely moved around in string's content, however remember not to break it's structure. For example, `&lt` or `lt;` won't work.

You can read more about HTML entities [here](http://www.w3schools.com/html/html_entities.asp).

List of HTML entities can be found [here](http://www.ascii.cl/htmlcodes.htm).


#### File format

Please make sure that received for translation file remains an `utf-8 with BOM` text file.


#### Please, REPORT:

* if you've received non-English strings, so we'll be able to replace them;
* if it's hard to translate some strings (don't worry about it, it's ok);
* if you've found error or typo in any language or string (including English strings);
* if you have any questions or difficulties.


Syntax highlighting
-------------------

It's recommended to work with syntax highlighting for cFos ml-file. It helps to differentiate keys, html-tags and other programming parts from text which actually should be translated, as well as detect any kind of markup errors:

* **Sublime Text** and **TextMate**: [Syntax highlighting with markup errors detection](https://github.com/ArmorDarks/cfos-ml-syntax)


IMPORTANT:
----------
By returning the translation to us you allow us to use it in any way we wish. In return you get a free license for cFos or cFosSpeed.