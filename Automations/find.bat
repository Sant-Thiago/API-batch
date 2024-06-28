@echo off

setlocal

set file=%~1
set scdParam=%2

set pathBase=

if "%scdParam%"=="" (
    set pathBase=\Users\
) else (
    set pathBase=\
)

cd %pathBase%

set start=%time%

dir /s /b "%file%"

set end=%time%

endlocal