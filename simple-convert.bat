@echo off
setlocal
title "Simple Convert"

set FFMPEG_EXE=%BASEDIR%ffmpeg\ffmpeg.exe
set "input=%~1"
set "format=%2"

REM ---- Verify FFmpeg ----
if not exist "%FFMPEG_EXE%" (
    echo [!] FFmpeg not found.
        call "%BASEDIR%ffmpeg_install.bat"
)

if "%input%"=="*" (
    for %%i in (*.*) do (
        "%FFMPEG_EXE%" -i "%%i" "%%~ni.%format%"
    )
) else (
    "%FFMPEG_EXE%" -i "%input%" "%~dpn1.%format%"
)
