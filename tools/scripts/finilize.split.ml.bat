cls

:: ===============
:: Split specified ml-file into standalone locales files
:: ===============
:: Сalled by Shell generated bat
:: This script finilizes splitting, by extracting language ID and locale from
:: generated by Shell script files and moving those files to proper destination
:: directory with proper names
:: @note Variables received from scripts, which calls this script
:: @todo This should be remade into Shell script. For now it's just a legacy code

rmdir /s /q %destDir%
mkdir %destDir%

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

	copy %tempDir%\"%%a" %destDir%\!id!-!lang!.cfos%%~xa

)


rmdir /s /q "%tempDir%"

DEL %tempBat%

exit