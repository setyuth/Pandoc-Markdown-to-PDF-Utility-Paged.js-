@echo off
setlocal EnableDelayedExpansion

REM ============================
REM Pandoc PDF Export v2.0.0
REM ============================

REM Configuration
set "VERSION=2.0.0"
set "DEFAULT_AUTHOR=Mr. SET Yuth"
set "DEFAULT_THEME=professional"

REM ============================
REM PARSE ARGUMENTS
REM ============================
set "INPUT="
set "THEME=%DEFAULT_THEME%"
set "AUTHOR=%DEFAULT_AUTHOR%"
set "NO_TOC="
set "NO_HIGHLIGHT="

:parse_args
if "%~1"=="" goto :check_input
if /i "%~1"=="--theme" (
  set "THEME=%~2"
  shift
  shift
  goto :parse_args
)
if /i "%~1"=="--author" (
  set "AUTHOR=%~2"
  shift
  shift
  goto :parse_args
)
if /i "%~1"=="--no-toc" (
  set "NO_TOC=1"
  shift
  goto :parse_args
)
if /i "%~1"=="--no-highlight" (
  set "NO_HIGHLIGHT=1"
  shift
  goto :parse_args
)
if "%~1" NEQ "" (
  set "INPUT=%~1"
  shift
  goto :parse_args
)

:check_input
if "%INPUT%"=="" (
  echo Pandoc PDF Export Utility v%VERSION%
  echo.
  echo Usage: export_v2.bat "filename.md" [OPTIONS]
  echo.
  echo Options:
  echo   --theme THEME      Choose theme: professional, academic, modern, minimal
  echo   --author NAME      Set author name for footer
  echo   --no-toc           Skip table of contents
  echo   --no-highlight     Disable syntax highlighting
  echo.
  echo Example:
  echo   export_v2.bat "document.md" --theme academic --author "John Doe"
  echo.
  pause
  exit /b 1
)

if not exist "%INPUT%" (
  echo [ERROR] File not found: %INPUT%
  pause
  exit /b 1
)

REM ============================
REM SETUP PATHS AND FILES
REM ============================
for %%F in ("%INPUT%") do set "BASENAME=%%~nF"
set "OUTPUT=%BASENAME%.pdf"

REM Get Date and Time
for /f %%D in ('powershell -NoProfile -Command "Get-Date -Format 'dd/MM/yyyy'"') do set "TODAY=%%D"
for /f %%T in ('powershell -NoProfile -Command "Get-Date -Format 'HH:mm'"') do set "TIME=%%T"

REM ============================
REM GENERATE METADATA
REM ============================
echo ^<div id="doc-date-val" style="display:none;"^>%TODAY%^</div^> > "_date_stamp.html"
echo ^<div id="doc-author-val" style="display:none;"^>%AUTHOR%^</div^> >> "_date_stamp.html"
echo ^<div id="doc-theme-val" style="display:none;"^>%THEME%^</div^> >> "_date_stamp.html"

REM ============================
REM DISPLAY EXPORT INFO
REM ============================
echo.
echo ========================================================
echo   Pandoc PDF Export Utility v%VERSION%
echo ========================================================
echo.
echo   Input      : %INPUT%
echo   Output     : %OUTPUT%
echo   Theme      : %THEME%
echo   Author     : %AUTHOR%
echo   Date       : %TODAY% %TIME%
if defined NO_TOC echo   TOC        : Disabled
if defined NO_HIGHLIGHT echo   Highlight  : Disabled
echo.
echo   Converting...
echo.

REM ============================
REM BUILD PANDOC COMMAND
REM ============================
set "CMD=pandoc "%INPUT%" -o "%OUTPUT%" --pdf-engine=pagedjs-cli.cmd"
set "CMD=%CMD% --css themes/%THEME%.css --include-in-header=header-footer.html"
set "CMD=%CMD% --include-before-body="_date_stamp.html" --metadata title="%BASENAME%""

if not defined NO_TOC (
  set "CMD=%CMD% --toc --toc-depth=3"
)

if not defined NO_HIGHLIGHT (
  set "CMD=%CMD% --syntax-highlighting=pygments"
)

REM ============================
REM EXECUTE CONVERSION
REM ============================
%CMD%

REM Cleanup
if exist "_date_stamp.html" del "_date_stamp.html"

if errorlevel 1 (
  echo.
  echo [ERROR] Export failed. Please check:
  echo   - Pandoc is installed and in PATH
  echo   - pagedjs-cli is installed globally
  echo   - Theme file exists: themes/%THEME%.css
  echo.
  pause
  exit /b 1
)

echo.
echo [SUCCESS] PDF created successfully: %OUTPUT%
echo.
pause