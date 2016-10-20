call "auth.bat"

git add ../../build/ml.software.cfos.txt -f

..\bin\curl -o "..\..\build\ml.software.cfos.txt" %curlAuth%,0@%curlSoftwareDownloadUrl% --digest

pause