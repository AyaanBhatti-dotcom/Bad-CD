@echo off
:: Force enable extensions and delayed expansion (Win7 sometimes has them off)
setlocal EnableExtensions EnableDelayedExpansion
cd /d "%~dp0" 2>nul

:: Correct title and colors even on very old cmd.exe
title System Security Installation
color 0A

:: Set window size (mode command works since Win2000, but we make it silent)
mode con: cols=80 lines=30 >nul 2>&1

cls
echo.
echo.
echo ============================================================
echo     ADVANCED SYSTEM SECURITY INSTALLER v2.7.4
echo ============================================================
echo.
echo Initializing installation process...
ping -n 3 127.0.0.1 >nul
echo.
echo [OK] System compatibility check passed
ping -n 2 127.0.0.1 >nul
echo [OK] Administrator privileges verified
ping -n 2 127.0.0.1 >nul
echo [OK] Registry access granted
ping -n 2 127.0.0.1 >nul
echo [OK] System files accessible
ping -n 3 127.0.0.1 >nul
echo.
echo Installing security patches...
ping -n 4 127.0.0.1 >nul

:: ============================================================
:: VIRUS SCANNER SECTION
:: ============================================================
color 0C
title VIRUS SCAN IN PROGRESS
cls
echo.
echo.
echo ============================================================
echo        SCANNING SYSTEM FOR MALWARE...
echo ============================================================
echo.
echo Analyzing system files...

for /l %%i in (1,1,50) do (
    set /a rand=!random! %% 100
    if !rand! lss 10 (
        echo [WARNING] Suspicious file detected: C:\WINDOWS\SYSTEM32\driver%%i.dll
    ) else if !rand! lss 20 (
        echo [OK] C:\WINDOWS\SYSTEM32\file%%i.sys - Clean
    ) else (
        set /a percent=%%i*2
        echo Scanning... !percent!%% complete
    )
    ping -n 2 127.0.0.1 >nul
)

echo.
echo [CRITICAL] 47 THREATS DETECTED
echo [CRITICAL] System integrity compromised
echo [ACTION] Initiating deep scan protocol...
ping -n 4 127.0.0.1 >nul
echo.
echo Deep scan completed.
ping -n 3 127.0.0.1 >nul

:: ============================================================
:: REGISTRY MOD SECTION
:: ============================================================
color 0E
title SYSTEM MODIFICATION
cls
echo.
echo.
echo ============================================================
echo        MODIFYING SYSTEM REGISTRY...
echo ============================================================
echo.
echo Accessing registry hives...
ping -n 3 127.0.0.1 >nul
echo [OK] Registry modifications applied successfully
ping -n 3 127.0.0.1 >nul

echo Injecting system files...
for /l %%i in (1,1,20) do (
    set /a progress=%%i*5
    echo Injecting file %%i/20 ... !progress!%%
    ping -n 2 127.0.0.1 >nul
)
echo.
echo [OK] System modifications complete
ping -n 3 127.0.0.1 >nul

:: ============================================================
:: DATA EXTRACTION SECTION
:: ============================================================
color 0D
title DATA EXTRACTION
cls
echo.
echo.
echo ============================================================
echo         EXTRACTING SYSTEM DATA...
echo ============================================================
echo.
echo Locating sensitive files...
ping -n 3 127.0.0.1 >nul

for /l %%i in (1,1,30) do (
    set /a type=!random! %% 4
    if !type!==0 echo [FOUND] C:\Users\%USERNAME%\Documents\secret%%i.pdf
    if !type!==1 echo [FOUND] C:\Users\%USERNAME%\Pictures\photo%%i.jpg
    if !type!==2 echo [FOUND] C:\Users\%USERNAME%\Desktop\private%%i.docx
    if !type!==3 echo [FOUND] C:\Users\%USERNAME%\Downloads\wallet%%i.zip
    ping -n 2 127.0.0.1 >nul
)

echo.
echo Extracting browser data...
ping -n 2 127.0.0.1 >nul
echo [OK] Chrome/Firefox/IE passwords extracted
echo [OK] Cookies and history copied
ping -n 3 127.0.0.1 >nul
echo [OK] Computer name: %COMPUTERNAME%
echo [OK] Current user: %USERNAME%
echo [OK] OS: Windows 7 Detected
ping -n 3 127.0.0.1 >nul
echo.
echo Data extraction successful!
ping -n 4 127.0.0.1 >nul

:: ============================================================
:: FINAL SCREEN
:: ============================================================
color 0A
cls
echo.
echo.
echo ============================================================
echo     ADVANCED SYSTEM SECURITY INSTALLER v2.7.4
echo ============================================================
echo.
echo [SUCCESS] Installation complete!
echo.
echo Press any key to restart your computer for changes to take effect...
pause >nul

:: Fake reboot countdown
cls
color 0C
echo.
echo.
echo   SYSTEM WILL RESTART IN 10 SECONDS...
echo   DO NOT TURN OFF YOUR COMPUTER!
echo.
for /l %%i in (10,-1,1) do (
    <nul set /p "=%%i  "
    ping -n 2 127.0.0.1 >nul
)
echo.

:: Final message before exit
color 07
cls
echo.
echo Your system is now fully protected.
echo Thank you for choosing Advanced System Security.
ping -n 5 127.0.0.1 >nul

endlocal
exit
