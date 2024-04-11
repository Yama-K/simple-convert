@echo off

set "input=%~1"
set "format=%2"

ffmpeg -i "%input%" "%~dpn1.%format%"
