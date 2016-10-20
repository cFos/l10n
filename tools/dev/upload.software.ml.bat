call "auth.bat"

..\bin\curl -i -T "..\..\build\ml.software.cfos.txt" %curlAuth%@%curlSoftwareUploadUrl% --digest

pause