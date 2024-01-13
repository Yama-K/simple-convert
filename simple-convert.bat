@echo off

set input=%1
set format=%2
set output=%~n1.%format%

ffmpeg -i %input% %output%