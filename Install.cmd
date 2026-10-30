@echo off
setlocal
if not exist "%~dp0driver\InterceptorSetupConsole.exe" (
  echo Download the complete Interceptor-MultiLang release ZIP first.
  exit /b 2
)
"%~dp0driver\InterceptorSetupConsole.exe" /install
set "result=%errorlevel%"
if "%result%"=="3010" echo Restart Windows, then run Install.cmd again to finish setup.
if not "%~1"=="/quiet" pause
exit /b %result%
