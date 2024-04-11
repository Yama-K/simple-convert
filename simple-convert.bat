@echo off

set "input=%~1"
set "format=%2"

if "%input%"=="*" (
    for %%i in (*.*) do (
        ffmpeg -i "%%i" "%%~ni.%format%"
    )
) else (
    ffmpeg -i "%input%" "%~dpn1.%format%"
)
