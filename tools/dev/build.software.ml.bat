set type=software

git add ../../build/ml.%type%.cfos.txt -f

copy /b "..\..\locales.%type%\*.txt" "..\..\build\ml.%type%.cfos.txt"

pause