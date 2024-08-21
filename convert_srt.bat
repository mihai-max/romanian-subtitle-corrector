@echo off
setlocal enabledelayedexpansion

:: List all .srt files in the current directory
echo Available .srt files:
set "count=0"
for %%f in (*.srt) do (
    set /a count+=1
    echo !count!: %%f
    set "file!count!=%%f"
)

:: Check if any .srt files were found
if "%count%"=="0" (
    echo No .srt files found in the current directory.
    exit /b 1
)

:: Prompt user to select a file by number
set /p "choice=Select a file by number: "

:: Validate the user's choice
if !choice! leq 0 if !choice! gtr !count! (
    echo Invalid choice.
    exit /b 1
)

:: Set the chosen file based on the user's input
set "inputFile=!file%choice%!"
set "tempFile=temp.srt"

echo Converting file: %inputFile%

:: Convert file from ANSI to UTF-8 using PowerShell
powershell -command "Get-Content -Path '%inputFile%' | Set-Content -Path '%tempFile%' -Encoding UTF8"

:: Replace º with ș , ã with ă , and þ with ț
(for /f "delims=" %%a in ('type "%tempFile%"') do (
    set "line=%%a"
    set "line=!line:º=ș!"
    set "line=!line:ã=ă!"
    set "line=!line:þ=ț!"
    echo !line!
)) > "%inputFile%"

:: Remove the temporary file
del "%tempFile%"

echo Conversion complete: %inputFile%
pause
