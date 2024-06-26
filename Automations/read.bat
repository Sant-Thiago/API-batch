@echo off

set file=%1

cat %file%

for /f "delims=" %%l ()