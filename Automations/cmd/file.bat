call config 1

setlocal

set fstParam=%~1
set sndParam=%~2
set trdParam=%~3

:start
call length "%fstParam%" size

if %size% GTR 0 (

        if %size% GTR 2 (
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


endlocal