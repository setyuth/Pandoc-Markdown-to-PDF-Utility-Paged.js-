@echo off
setlocal EnableDelayedExpansion

REM ============================
REM CHECK INPUT
REM ============================
if "%~1"=="" (
  echo Usage: export_v2.bat "filename.md"
  pause
  exit /b 1
)

set "INPUT=%~1"
if not exist "%INPUT%" (
  echo File not found: %INPUT%
  pause
  exit /b 1
)

for %%F in ("%INPUT%") do set "BASENAME=%%~nF"
set "OUTPUT=%BASENAME%.pdf"

REM Get Date (dd/MM/yyyy)
for /f %%D in ('powershell -NoProfile -Command "Get-Date -Format 'dd/MM/yyyy'"') do set "TODAY=%%D"

REM ============================
REM GENERATE DATE INJECTION
REM ============================
REM Create a hidden div so PagedJS can read the date securely
echo ^<div id="doc-date-val" style="display:none;"^>%TODAY%^</div^> > "_date_stamp.html"

echo.
echo Converting : %INPUT%
echo Output     : %OUTPUT%
echo Date       : %TODAY%
echo.

REM ============================
REM EXPORT COMMAND
REM ============================
pandoc "%INPUT%" ^
  -o "%OUTPUT%" ^
  --pdf-engine=pagedjs-cli.cmd ^
  --css print.css ^
  --include-in-header=header-footer.html ^
  --include-before-body="_date_stamp.html" ^
  --metadata title="%BASENAME%" ^
  --syntax-highlighting=pygments ^
  --toc ^
  --toc-depth=3

REM Cleanup
if exist "_date_stamp.html" del "_date_stamp.html"

if errorlevel 1 (
  echo [ERROR] Export failed.
  pause
  exit /b 1
)

echo [SUCCESS] PDF created successfully.
pause