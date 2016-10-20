cFos binary tools
=================


mltool.exe
----------

MLTOOL is console utility, developed by cFos Software GmbH to maintain cFos l10n files.


### Console commands


#### ↑ Export missing keys:

`mltool exp {-m ml file} {-i ref lang id} {-n export file} {-e export lang id}`

Example:

```
tools\bin\mltool exp -m build\ml.website.cfos.txt -i 1033 -n destinationNewFileName.cfos.txt -e 1066
```


#### ↑ Export unproofread keys:

`mltool pvr {-m ml file} {-i ref lang id} {-n proofread file} {-e proofread lang id} [-z exclude files] [-u]`

Example:

```
tools\bin\mltool pvr -m build\ml.website.cfos.txt -i 1033 -n destinationNewFileName.cfos.txt -e 2070 -z fileWithStringToExclude.cfos.txt -u
```


#### ↓ Import missing keys:

`mltool imp {-m ml file} {-i ref lang id} {-n import file}`

Example:

```
git add build\ml.website.cfos.txt -f

tools\bin\mltool imp -m build\ml.website.cfos.txt -i 1033 -n importedFileName.cfos.txt
```


#### ↑ Compare files:

`cmp {-m ml file} {-n new ml file} [-i lang id] {-o output file} [-a]`

Example:

```
tools\bin\mltool cmp -m originalFile.cfos.txt -n newFile.cfos.txt -i 1028 -o changes.cfos.txt
```


#### Read out all language keys used in a tpl-file:

`tools\bin\mltool gex -m build\ml.website.cfos.txt -h templateFile.tpl -o output.txt`


#### Check missing keys:

Example:

```
tools\bin\mltool chk -m "build\ml.website.cfos.txt" -i 1033 -o destinationNewFileName.cfos.txt
```

The command `chk` works on the multi-language file (`-m`) all_ml.txt, usses the reference language identifier (-i) 1033 and creates the output file (-o) chk.txt.



curl.exe
--------

cURL is a computer software project providing a library and command-line tool for transferring data using various protocols.

See details at [Wikipedia](https://en.wikipedia.org/wiki/CURL)

Thanks to https://curl.haxx.se for amazing utility!