@echo off

setlocal enabledelayedexpansion

call configGitHub
set APIGH=%res%
 
:secondVersion

	set name=%~1
	set directory=%~2
	set "description=Create by Sant-Thiago tool - https://github.com/Sant-Thiago/API-batch." 
	set "private=false"
	set "isTemplate=false"

	call :reqGitHub "%name%" "%description%" %private% %isTemplate% 

	call :manDir "%directory%"

goto :eof

:firstVersion

	set name=%~1
	set description=%~2
	set private=%~3
	set isTemplate=%~4
	set directory=%~5

	if "%name%"=="" (
		set "name=ST-tool"
		set "description=Create by Sant-Thiago tool - https://github.com/Sant-Thiago/API-batch." 
		set "private=false"
		set "isTemplate=false"
	) else if "%description%"=="" (
		set "description=Create by Sant-Thiago tool - https://github.com/Sant-Thiago/API-batch." 
		set "private=false"
		set "isTemplate=false"
	) else (
		set "private=false"
		set "isTemplate=false"
	)

	call :reqGitHub "%name%" "%description%" %private% %isTemplate% 

	call :manDir %directory%
	
goto :eof

:reqGitHub

	set name=%~1
	set description=%~2
	set private=%~3
	set isTemplate=%~4

	set "body=-d "{\"name\":\"%name%\",\"description\":\"%description%\",\"homepage\":\"https://github.com\",\"private\":%private%,\"is_template\":%isTemplate%}"" 

	@REM echo %APIGH% %body%

	set "file=%DATE:/=_%res.json"

	curl %APIGH% %body% > "%file%"

	for /f "tokens=2 delims= " %%a in ('findstr /c:"\"clone_url\":" "%file%"') do (
		set url=%%a
		goto :end
	)
	:end
	del %file%

goto :eof

:manDir
	set directory=%~1

	if not "%directory%"=="" (
		dir /s /b | findstr /e /r /c:"%directory%$" > "fileToRead.txt"
		call catch "fileToRead.txt" "1"
		del "fileToRead.txt"
		cd /d !res!
	)
	call :pushDirectory
goto :eof


:pushDirectory
	set url=%url:~1,-2%

	echo "# %name%" >> README.md
	git init
	git add README.md
	git commit -m "auto commit ST"
	git branch -M main
	git remote add origin %url%
	git push -u origin main

	echo.
	echo Link::%url:~0, -5%
	echo.
goto :eof


endlocal