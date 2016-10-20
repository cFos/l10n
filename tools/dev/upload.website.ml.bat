call "auth.bat"

..\bin\curl -i -T "..\..\build\ml.website.cfos.txt" %curlAuth%@%curlWebsiteUploadUrl% --digest

pause