@echo off
title Made @Abd.Hardware
chcp 65001 >nul
:: Check for administrator privileges
NET SESSION >nul 2>&1
if %errorLevel% neq 0 (
    echo This script requires Administrator privileges. Please run as Administrator.
    exit /b
)

call :banner
:: Run System File Checker
echo Running System File Checker (SFC)...
SFC /ScanNow
cls
call :banner
:: Run DISM commands for image health checks
echo Checking Image Health...
DISM /Online /Cleanup-Image /CheckHealth
cls
call :banner
echo Scanning Image Health...
DISM /Online /Cleanup-Image /ScanHealth
cls
call :banner
echo Restoring Image Health...
DISM /Online /Cleanup-Image /RestoreHealth
cls
call :banner
echo All tasks completed.
pause



:banner
echo.
echo.
echo		   ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗    ███████╗██╗██╗  ██╗███████╗██████╗ 
echo		   ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝    ██╔════╝██║╚██╗██╔╝██╔════╝██╔══██╗
echo		   ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗    █████╗  ██║ ╚███╔╝ █████╗  ██████╔╝
echo		   ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║    ██╔══╝  ██║ ██╔██╗ ██╔══╝  ██╔══██╗
echo		   ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║    ██║     ██║██╔╝ ██╗███████╗██║  ██║                                                                                                                                                             
echo										   													By: @ABD.HARDWARE
echo.
echo.
                                                                               