@echo off

setlocal

set appName=%~1
set template=%~2

npm create vite@latest "%appName%" -- --template %template%

endlocal