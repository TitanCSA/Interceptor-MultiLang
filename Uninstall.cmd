@echo off
setlocal
if not exist "%~dp0driver\InterceptorSetupConsole.exe" (
  echo Download the complete Interceptor-MultiLang release ZIP first.
  exit /b 2
)
"%~dp0driver\InterceptorSetupConsole.exe" /uninstall
set "result=%errorlevel%"
if "%result%"=="3010" echo Restart Windows to finish restoring Windows input drivers.
if not "%~1"=="/quiet" pause
exit /b %result%
