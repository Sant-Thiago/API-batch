@echo off 
setlocal

:: define o arquivo desejado o ENV.PATH
set "fileName=Cofrinho.java"

:: Pega o arquivo definido e vai expandindo seu caminho até o drive
for %%f in ("%fileName%") do set "fullPath=%%~dpnf"

echo O caminho completo do arquivo e: %fullPath%

endlocal