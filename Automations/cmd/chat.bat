@echo off

set temp=%time:~6,2%
call create -d %temp%

set request=%~1
set "googleKey=AIzaSyAhMY8PQ420cd6Wh8r6iViPZ8E7w5qUr-MULo"

curl -H "Content-Type: application/json" -d "{\"contents\":[{\"parts\":[{\"text\":\"%request%\"}]}]}" -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=%googleKey%" > "%temp%\response.json" 2>NUL 

for /f "tokens=2 delims=:}" %%a in ('findstr /c:"\"text\":" "%temp%\response.json"') do (
    echo Conteúdo: %%a
)

del "%temp%\response.json"