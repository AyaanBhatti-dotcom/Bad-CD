@echo off
setlocal enabledelayedexpansion
color 0C
title VIRUS SCAN IN PROGRESS
cls
echo.
echo.
echo      ============================================================
echo      |   SCANNING SYSTEM FOR MALWARE...                        |
echo      ============================================================
echo.
echo      Analyzing system files...
ping 127.0.0.1 -n 2 >nul

for /l %%i in (1,1,50) do (
    set /a rand=!random! %% 100
    if !rand! LSS 10 (
        echo      [WARNING] Suspicious file detected: C:\WINDOWS\SYSTEM32\%%i.dll
    ) else if !rand! LSS 20 (
        echo      [OK] C:\WINDOWS\SYSTEM32\file%%i.sys - Clean
    ) else (
        echo      Scanning... !rand!%% complete
    )
    ping 127.0.0.1 -n 2 >nul
)

echo.
echo      [CRITICAL] 47 THREATS DETECTED
echo      [CRITICAL] System integrity compromised
echo      [ACTION] Initiating deep scan protocol...
ping 127.0.0.1 -n 3 >nul
echo.
echo      Deep scan completed.
echo      All threats have been... analyzed.
ping 127.0.0.1 -n 3 >nul
exit

