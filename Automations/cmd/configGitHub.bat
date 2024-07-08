@echo off

setlocal enabledelayedexpansion

set token=%~1

if "%token%"=="" (
	call catch "%USERPROFILE%\.st\tokens\token.txt" 
	set token=!res!

) else (
	if exist "%USERPROFILE%\.st\tokens\token.txt" (
		del "%USERPROFILE%\.st\tokens\token.txt"
	)
	mkdir "%USERPROFILE%\.st\tokens"
	echo %token% > "%USERPROFILE%\.st\tokens\token.txt"
	call catch "%USERPROFILE%\.st\tokens\token.txt" 
	set token=!res!
)

set result=-L -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer %token%" -H "X-GitHub-Api-Version: 2022-11-28" https://api.github.com/user/repos

	::https://api.github.com/orgs/%org%/repos

endlocal & set res=%result%