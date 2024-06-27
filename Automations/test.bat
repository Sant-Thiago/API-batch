@echo off

@REM call catch.bat teste

dir /s /b "%1*" > tempFile.txt

call catch tempFile.txt

set file=%res%
del tempFile.txt
@REM set "file=%dir% %1*"

echo "%file%"