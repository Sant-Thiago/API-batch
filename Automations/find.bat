@echo off

setlocal

set file=%~1

cd /

set start=%time%

for /f "delims=" %%o in ('dir /s /b "%file%"') do (
    set output=!output! "%%o"
)

@REM dir /s /b "%file%"

:: echo !output! > output.txt

set end=%time%

endlocal