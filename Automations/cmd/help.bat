@echo off
setlocal enabledelayedexpansion

set "fstParam=%~1"

if "%fstParam%" == "" (
    rem Substitui o caracter ';' pelo valor colocado no &echo
    rem & separa os comandos
    set "paths=%PATH:;=" "%"

    for %%p in ("%paths%") do (
        echo "%%~p" | findstr "API-batch\Automations" > NUL
        
        if !errorlevel! EQU 0 (
            call :showFiles "%%p"
            exit /b
        ) 
    )
    goto :eof
) else if /i "%fstParam%" == "system" (
    echo Available types:
    echo "info;"
    echo "operationalsystem (or so);" 
    echo "processor (or cpu);"
    echo "computername;"
    echo "computer (or pc);"
    echo "computerinfo (or pcinfo);"
    echo "memory (or ram)" 
    echo "virtualmemory (or vram);"
    echo "harddisk (or hdd or hd);"
    echo "disk;"
    echo "volume (or vol);"
    echo "volumes;"
    echo "network (or net);"
    echo "networks (or nets);"
    echo "softwares (or sws);"
    echo "resource;"
    echo "desktop;"
    echo "service;"
    echo "hal;"
    echo "power;"
    echo "printer;"
    echo "bios;"
    echo "user;"
    echo "ip;"
    echo "process;"
    echo "driver;"
    echo "drivers;"
    echo "ports;"
    echo "portsconection;"
)

:showFiles
rem Mostra todos os arquivos no diretório passado como parâmetro
for /f "tokens=*" %%p in ('dir /B %1') do (
    set "file=%%~np"
    echo !file!
)

:end
endlocal
