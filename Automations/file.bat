call config 1

setlocal

set fstParam=%~1
set sndParam=%~2
set trdParam=%~3

:start
call length "%fstParam%" size

if %size% GTR 0 (