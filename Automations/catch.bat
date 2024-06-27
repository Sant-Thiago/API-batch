@echo off

setlocal enabledelayedexpansion

set tempFile=tempFile%time%.txt

dir /s /b "%1*" > %tempFile%

call firstLine %tempFile%

set file=%res%

del %tempFile%

@REM call read %file%
echo %file%


@REM set file=%res%
@REM del tempFile.txt

@REM :: retira a palavra 'echo.', que é interpretada, e uma quebra de linha
@REM set "lines=!lines:~0, -6!"

:firstLine
    set file=%1
    set lines=
    set lineCount=0

    for /f "usebackq delims=" %%l in ("%file%") do (
        set /a lineCount+=1
        if !lineCount! equ 1 (
            set lines=!lines!%%l^&echo.
        )
    )

    set "res=!lines:~0, -6!"

goto :eof


endlocal

:: usebackq: permite que o nome do arquivo seja cercado por aspas duplas, tratando o argumento como um arquivo de texto

:: o uso de usebackq é opcional nesse caso, o parametro sem aspas funciona

:: ^& escapa o próximo caracater