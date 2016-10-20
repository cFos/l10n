call "auth.bat"

git add ../../build/ml.website.cfos.txt -f

..\bin\curl -o "..\..\build\ml.website.cfos.txt" %curlAuth%,0@%curlWebsiteDownloadUrl% --digest

pause