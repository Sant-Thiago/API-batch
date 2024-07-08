@echo off

setlocal enabledelayedexpansion

:start

    set directory=%~1
    set condition=%~2

    :: pega os dois ultimos valores da string do time HH:MM:SS
    set id=%time:~6, 2%
    set tempFile=tempFile%id%.txt

    dir /s /b "%directory%*" > %tempFile%


    call :firstLine %tempFile%
    set file=%res%

    if "%condition%"=="" (
        call :read %file%
    ) else if "%condition%"=="1" (
        call :firstLine %file%
    )

    del %tempFile%
    endlocal & set res=%res%
goto :eof

:read
    set file=%1
    set lines=

    for /f "delims=" %%l in (%file%) do (
        set lines=!lines!%%l^&echo.
    )

    :: retira a palavra 'echo.', que é interpretada, e uma quebra de linha
    set lines=!lines:~0, -6!
    set res=!lines!
goto :eof

:firstLine
    set file=%1
    set lines=
    set lineCount=0

    for /f "usebackq delims=" %%l in ("%file%") do (
        set /a lineCount+=1
        if !lineCount! equ 1 (
            set lines=!lines!%%l
        )
    )

    set res=%lines%
goto :eof

:: usebackq: permite que o nome do arquivo seja cercado por aspas duplas, tratando o argumento como um arquivo de texto

:: o uso de usebackq é opcional nesse caso, o parametro sem aspas funciona

:: ^& escapa o próximo caracater