@echo off

setlocal

call configGitHub
set APIGH=%res%

set name=%~1
set description=%~2
set private=%~3
set isTemplate=%~4

if "%name%"=="" (
	set "name=ST-tool"
	set "description=Create by Sant-Thiago tool - https://github.com/Sant-Thiago/API-batch." 
	set "private=false"
	set "isTemplate=false"
) else if "%description%"=="" (
	set "description=Create by Sant-Thiago tool - https://github.com/Sant-Thiago/API-batch." 
	set "private=false"
	set "isTemplate=false"
)

set "body=-d "{\"name\":\"%name%\",\"description\":\"%description%\",\"homepage\":\"https://github.com\",\"private\":%private%,\"is_template\":%isTemplate%}"" 

@REM echo %APIGH% %body%

curl %APIGH% %body%

endlocal