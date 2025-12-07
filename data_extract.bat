@echo off
setlocal enabledelayedexpansion
color 0D
title DATA EXTRACTION
cls
echo.
echo.
echo      ============================================================
echo      |   EXTRACTING SYSTEM DATA...                             |
echo      ============================================================
echo.
echo      Locating sensitive files...
ping 127.0.0.1 -n 2 >nul 2>&1

echo      Scanning user directories...
ping 127.0.0.1 -n 2 >nul 2>&1

:: Fake file scanning
for /l %%i in (1,1,30) do (
    set /a filetype=!random! %% 4
    if !filetype!==0 (
        echo      [FOUND] C:\Users\%USERNAME%\Documents\document%%i.pdf
    ) else if !filetype!==1 (
        echo      [FOUND] C:\Users\%USERNAME%\Pictures\image%%i.jpg
    ) else if !filetype!==2 (
        echo      [FOUND] C:\Users\%USERNAME%\Desktop\file%%i.txt
    ) else (
        echo      [FOUND] C:\Users\%USERNAME%\Downloads\item%%i.zip
    )
    ping 127.0.0.1 -n 2 >nul 2>&1
)

echo.
echo      Extracting browser data...
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] Browser history extracted
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] Saved passwords located
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] Cookies copied
ping 127.0.0.1 -n 2 >nul 2>&1

echo.
echo      Compiling system information...
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] System hostname: %COMPUTERNAME%
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] User account: %USERNAME%
ping 127.0.0.1 -n 2 >nul 2>&1
echo      [OK] Windows version: Windows 7
ping 127.0.0.1 -n 2 >nul 2>&1

echo.
echo      [OK] Data extraction complete
echo      [OK] All files catalogued
ping 127.0.0.1 -n 3 >nul 2>&1

