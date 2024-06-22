@echo off

setlocal

set file=%~1

cd /

set start=%time%

dir /s /b "%file%"

set end=%time%

endlocal