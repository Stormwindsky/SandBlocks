:: Having color in cmd (in all windows) is "impossible" because it requires dependencies, like Terminal or PowerShell.
:: but cmd (.bat) is the default in ALL windows, which is more secure than PowerShell (I'm not sure because it sometimes requires the Terminal app).
@echo off
cls
echo Verifying Node.js installation...
:: Try find Node.js version (verify install)
node --version >nul 2>&1

if %errorlevel% equ 0 (
    echo Node.js is installed!
    echo.
    echo Running SandBlocks!
    :: install dependences if exists
    npm install
    :: node main.js or npm start if exists a script in packaje.json
    :: and clean the screen for start the use of the program
    cls 
    node main.js
) else (
    :: Node.js is NOT installed
    echo Node.js is NOT installed!
    echo.
    echo Please, install Node.js from https://nodejs.org/
    echo.
    echo Steps to install Node.js:
    echo 1. Go to https://nodejs.org/
    echo 2. Download LTS version
    echo 3. Run the installer
    echo.
    echo It is highly recommended to install Git if you don't have it, otherwise you will have to manually download some files in specific cases.
)