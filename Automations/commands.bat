@echo off

setlocal enabledelayedexpansion

:: ':;=' substitui o caracter ';' pelo valor colocado no &echo
:: & separa os comandos
set paths=%PATH:;=" "%

for %%p in ("%paths%") do (
    echo "%%~p" | findStr "API-batch\Automations" > NUL
    
    if !errorlevel! EQU 0 (
        call :showFiles %%p
        exit /b
    ) 
)
goto :eof

:showFiles
for /f "tokens=*" %%p in ('dir /B %1') do (
    set file=%%~np
    echo !file!
)

goto :eof

endlocal