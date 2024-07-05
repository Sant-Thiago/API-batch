call config 1

setlocal

set fstParam=%~1
set sndParam=%~2
set trdParam=%~3

:start
call length "%fstParam%" size

if %size% GTR 0 (
	if "%fstParam%"=="-f" (

		call :isEmpty %sndParam%

		echo Variavel %res%

		if "%res%"=="0" (
			call :setFile 1
		) else (
			call :setFile 0
		)

		echo File %sndParam% created!

	) else if "%fstParam%"=="-d" (

		call :isEmpty %sndParam%

		if "%res%"=="0" (
			call :setDirectory 1
		) else (
			call :setDirectory 0
		)

		echo Directory %sndParam% created!

	) else if %size% GTR 2 (
		call :setFile 0
	)
) else (
	echo E.S.S.A..B.O.Q.U.I.N.H.A..AI..BEIJA.?
)
goto :eof


:isEmpty
if "%~1"=="" (
	set "res=1"
) else (
	set "res=0"
)
goto :eof 


:setFile

set file="%sndParam%"
set content=%trdParam%

if "%1"=="0" (
	set file="%fstParam%"
	set content=$ Nothin....
)

echo %content% > %file% 

cmd /c code "%file%"

goto :eof

:setDirectory

mkdir "%~1" 

cd "./%~1"

goto :eof


endlocal