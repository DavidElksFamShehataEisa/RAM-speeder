@echo off
REM This code will clear all the cache and temp files
%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
REM This code will kill all processes except for those needed by SYSTEM
taskkill /f /fi "USERNAME ne SYSTEM" /fi "STATUS eq RUNNING"
REM This code will delete all prefetch files
del C:\Windows\Prefetch\*.* /Q