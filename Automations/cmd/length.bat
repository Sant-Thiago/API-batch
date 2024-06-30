@echo off

setlocal

rem Recebe a string como primeiro parâmetro
set "string=%~1"

rem Inicializa o contador de comprimento
set "length=0"

rem Loop para contar os caracteres da string
:loop
if defined string (
    set "string=%string:~1%"
    set /a length+=1
    goto loop
)

endlocal & echo %length%

exit /b
