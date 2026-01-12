@echo off
echo ========================================
echo Running Batch Script from Jenkins...
echo Current User: %USERNAME%
echo Build Workspace: %WORKSPACE%
echo ========================================
echo Task 1: Checking system information...
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
echo Task 2: Build process completed at %TIME%
echo ========================================
