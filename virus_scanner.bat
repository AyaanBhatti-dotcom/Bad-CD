@echo off
setlocal enabledelayedexpansion
color 0C 2>nul
title VIRUS SCAN IN PROGRESS
cls 2>nul
echo.
echo.
echo      ============================================================
echo      |   SCANNING SYSTEM FOR MALWARE...                        |
echo      ============================================================
echo.
echo      Analyzing system files...
ping 127.0.0.1 -n 2 -w 1000 >nul 2>&1

for /l %%i in (1,1,50) do (
    set /a rand=!random! %% 100
    if !rand! LSS 10 (
        echo      [WARNING] Suspicious file detected: C:\WINDOWS\SYSTEM32\%%i.dll
    ) else if !rand! LSS 20 (
        echo      [OK] C:\WINDOWS\SYSTEM32\file%%i.sys - Clean
    ) else (
        echo      Scanning... !rand!%% complete
    )
    ping 127.0.0.1 -n 2 -w 1000 >nul 2>&1
)

echo.
echo      [CRITICAL] 47 THREATS DETECTED
echo      [CRITICAL] System integrity compromised
echo      [ACTION] Initiating deep scan protocol...
ping 127.0.0.1 -n 3 -w 1000 >nul 2>&1
echo.
echo      Deep scan completed.
echo      All threats have been... analyzed.
ping 127.0.0.1 -n 3 -w 1000 >nul 2>&1
endlocal
exit /b
