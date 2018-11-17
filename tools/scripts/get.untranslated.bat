
:: ===============
:: Get untranslated or unreviewed strings for specified locale
:: ===============
:: @note Variables received from scripts, which calls this script

:: Get current date YYYY-MM-DD
set date=%DATE:~6%-%DATE:~3,2%-%DATE:~0,2%

if NOT DEFINED sourceLang (
  set sourceLang=1033
)
if NOT DEFINED destDir (
  set destDir=..
)
if NOT DEFINED mlDir (
  set mlDir=..\build
)
if NOT DEFINED mltoolExe (
  set mltoolExe=bin\mltool
)

if "%src%"=="software" (
  set "src_prefix=sw__"
  set "src_full=software"
) else (
  set "src_prefix="
  set "src_full=website"
)

set "ml_file=%mlDir%\ml.%src_full%.cfos.txt"

DEL "_temp.cfos.txt"

@echo off

setlocal
set first=1

:: Exclude all strings, which are in `sent` directory
>>"_temp.cfos.txt" (
  for %%F in ("..\sent\%src_prefix%%type%__%lang%_*.txt") do (
    if defined first (
      type "%%F"
      set "first="
    ) else more +1 /E "%%F"
  )
)

:: Exclude all strings, which are in `sent` directory and have `--` after language code
:: @2do Not sure why it was made like that. As far as I remember, argument for `for` supports only wildcards, but
::      but not full regext. That's why we have to repeate it like that
>>"_temp.cfos.txt" (
  for %%F in ("..\sent\%src_prefix%%type%__%lang%--*.txt") do (
    if defined first (
      type "%%F"
      set "first="
    ) else more +1 /E "%%F"
  )
)

:: Exclude all strings, which are in `pending` directory
>>"_temp.cfos.txt" (
  for %%F in ("..\pending\%src_prefix%%type%__%lang%_*.txt") do (
    if defined first (
      type "%%F"
      set "first="
    ) else more +1 /E "%%F"
  )
)

:: If type of extraction is for review, exclude all strings from `added` directory, which have `pr` type
IF "%type%"=="pr" (
>>"_temp.cfos.txt" (
  for %%F in ("..\added.%src_full%\%src_prefix%%type%__%lang%_*.txt") do (
    if defined first (
      type "%%F"
      set "first="
    ) else more +1 /E "%%F"
  )
)
)

if defined first (
  echo #language %langId% >> "_temp.cfos.txt"
  set "first="
)

@echo on

:: Exclude everything from `exclude...cfos.txt` file
more +1 /E "scripts\exclude.%src_full%.cfos.txt" >> "_temp.cfos.txt"

:: Export untranslated or unreviewed with mltool
IF "%type%"=="pr" %mltoolExe% pvr -m %ml_file% -i %sourceLang% -n "%destDir%\%src_prefix%%type%__%lang%--org__%date%.cfos.txt" -e %langId% -z "_temp.cfos.txt" -u
IF "%type%"=="mk" %mltoolExe% exp -m %ml_file% -i %sourceLang% -n "%destDir%\%src_prefix%%type%__%lang%--en__%date%.cfos.txt" -e %langId% -z "_temp.cfos.txt" -u

DEL "_temp.cfos.txt"