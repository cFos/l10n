cls

:: ===============
:: Finalize getting of number of untranslated strings per each language
:: ===============
:: Extracts untranslated strings per each locale with `mltool.exe`,
:: then counts number of untranslated strings inside of them
:: @note Variables received from scripts, which calls this script
:: @todo This should be remade into Shell script. For now it's just a legacy code
:: @todo Add proper paths to exluded files for `get.untranslated.bat`

rmdir /s /q %tempUntranslatedDir%
mkdir %tempUntranslatedDir%

setlocal EnableDelayedExpansion


for /f "delims=" %%a in ('dir %tempDir% /b /a-d ') do (

	for /F "delims=" %%1 in ('FINDSTR "#language" %tempDir%\%%a') do (
		for %%2 in (%%1) do (
			set id=%%2
		)
	)
	echo %id%

	for /F "delims=" %%1 in ('FINDSTR "^%lang_prefix%" %tempDir%\%%a') do (
		for %%2 in (%%1) do (
			set lang=%%2
		)
	)
	echo %lang%

	set src=website
	set type=mk

  set mlDir=..\..\build
  set mltoolExe=..\bin\mltool
	set destDir=%tempUntranslatedDir%

	set lang=!lang:~1,-1!
	set langId=!id!

	call "../scripts/get.untranslated.bat"

	call "sh awk '$1 ~ /^\w*?(\s)?=(\s)?/ {++c} END {print c}' FS=: _temp.untranslated.website/mk__ar--en__2016-04-17.cfos.txt"

	pause

)


rmdir /s /q "%tempDir%"

DEL %tempBat%

exit