@ECHO OFF
REM ==============================
REM 
REM  App Deployer
REM  Author: KAZU
REM 
REM  Copyright (c) 2024 Kazu. All rights reserved.
REM  No unauthorized reproduction or reuse is allowed.
REM  Do not use source codes and materials without my permission.
REM 
REM ==============================

SETLOCAL & SET "D=%~dp0" & SET "L=App.log"
PUSHD %D% && ECHO S:%DATE% %TIME% >> %L% & POWERSHELL -EXECUTIONPOLICY BYPASS -FILE .\%~n0.PS1
POPD
ENDLOCAL
EXIT /B 0
