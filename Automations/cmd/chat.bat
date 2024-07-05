@echo off

set temp=%time:~6,2%
echo '' > .\%temp%\response.json

echo %temp%

@REM set request=%~1
@REM set "googleKey=-MULo"

@REM curl -H "Content-Type: application/json" -d "{\"contents\":[{\"parts\":[{\"text\":\"%request%\"}]}]}" -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=%googleKey%" > "%temp%\response.json" 2>NUL 

@REM for /f "tokens=2 delims=:}" %%a in ('findstr /c:"\"text\":" "%temp%\response.json"') do (
@REM     echo Conteúdo: %%a
@REM )

del "%temp%\response.json"