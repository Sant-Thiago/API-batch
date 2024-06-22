@echo off

:: Verifica se o retorno do comando net session é 'Acesso negado'
>nul 2>&1 net session || (
    echo Este script requer privilégios de administrador.
    echo Por favor, execute novamente como administrador.
    echo.
    exit /b 1
)

:: Obtém o novo diretório
set "newPath=%cd%"

:: Obtém o diretório do PATH
set "path=%PATH%"

:: Atualiza o PATH do sistema
setx PATH "%path%;%newPath%" /m

:: Exibe se deu certo
echo "%PATH%"