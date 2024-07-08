@echo off

setlocal

set file=%~1
set scdParam=%2

set pathBase=

if %scdParam%=="" (
    set pathBase=\Users\
) else if %scdParam%=="\" (
    set pathBase=\
) else if %scdParam%=="." (
    set pathBase=.
)

cd %pathBase%

set start=%time%

dir /s /b "%file%" > "file%start%.txt"

set end=%time%

call catch "file%start%.txt"

endlocal