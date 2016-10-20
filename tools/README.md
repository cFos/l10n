cFos l10n tools
===============

You can use those tools on Windows machines to make work with cFos l10n files slightly easier.

_Note that those tools aren't great for now and originally have been made in great hurry for internal usage only. So far they works only under Windows. We are considering refactoring for more universal platform, like Node.js in future._

There are following subsets of tools available:

* `bin` — various binary utilities, from which `mltool.exe` will be most useful for translators
* `dev` — scripts for developers\maintainers of repository. For most translators they will be not very useful
* `scripts` — contains internal scripts, which empowers other scripts
* In root you can find a large list of `.bat` files which allows easily to extract untranslated strings from specified language.

How to use untranslated or unreviewed strings extractor
-------------------------------------------------------

*Bat-files for getting unreviewerd strings `get.unreviewed.*` don't work for translators right now, don't use it!*

To get untranslated files you have to do following steps:

1. Clone or download repository to your local machine
2. Build multilangual file with `/tools/dev/build.website.ml.bat` for website strings, or `/tools/dev/build.software.ml.bat` for software strings
3. Run script in `/tools` depending on source and language for which you'd like to get untranslated strings. For example, to get software strings for French language, run `get.untranslated.software.fr-1036.bat`

File with untranslated strings will appear in root of project. For example, generated today file for software strings from French language will look like this `sw__mk__fr--en__2016-10-20.cfos.txt`.

If you want to have more freedom over what extracted, exported and so on — try using `mltool.exe` directly. It's CLI utility. See instructions for it [here](https://github.com/cFos/l10n/tree/master/tools/bin).
