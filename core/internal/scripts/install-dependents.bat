@echo off
echo Are you sure you would like to proceed with installing dependencies?
set /p response="Options = [yes], [no], [help]: "

if "%response%"=="yes" (
    powershell -Command "Write-Host ':=: Starting install process.' -ForegroundColor Green"
    
    : Modify this to include any other packages you want to install
    npm install discord.js@latest mongoose@latest
    goto :eof
) else if "%response%"=="no" (
    powershell -Command "Write-Host ':=: Cancelling the installation of dependencies.' -ForegroundColor Red"
    goto :eof
) else if "%response%"=="help" (
    powershell -Command "Write-Host ':=: Fetching information for command.' -ForegroundColor Magenta"
    echo "Install the dependencies. Confirm the install, and the packages will be installed."
    goto :eof
)