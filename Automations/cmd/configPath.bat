@echo off

setlocal

:: Verifica se o retorno do comando net session é 'Acesso negado'
:: || nesse caso, serve para executar o bloco se o 'net session' falhar (o que acontecerá se não for executado como adm)
>nul 2>&1 net session || (
    echo Este script requer privilégios de administrador.
    echo Por favor, execute novamente como administrador.
    echo.
    exit /b 1
)

:: Obtém o novo diretório
set "newPath=%cd%"

:: Obtém o diretório do PATH
set "currentPath=%PATH%"

set "updatePath=%currentPath%;%newPath%"

@REM if not "%updatePath:~1023%"=="" (
@REM     echo O novo PATH excede o limite de 1024 caracteres.
@REM     echo Por favor, remova alguns diretórios do PATH e tente novamente.
@REM     exit /b 1
@REM )

:: Atualiza o PATH da sessão atual
set "PATH=%updatePath%"

:: Atualiza o PATH do sistema
setx PATH "%updatePath%" /m

:: Exibe se deu certo
echo "%PATH%"

endlocal