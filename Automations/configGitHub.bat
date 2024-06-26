@echo off

set token=%~1;

if "%token%"!="" (
	call find "\tokens\token.txt" 
	
	echo %output%

	echo %token% > %output%
) else (
	:: fazer um comando para pegar o valor de um arquivo
	set token=%cat tokens% 
)

::set org=%~1;
set APIGH="-H Accept: application/vnd.github+json -H Authorization: Bearer %token% -H Z-GitHub-Api-Version: 2022-11-28 https://api.github.com/orgs/%user%/repos"

	::https://api.github.com/orgs/%org%/repos