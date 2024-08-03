@echo off

REM Back up the existing config.js and channel-prefs.js files
copy "C:\Program Files\Mozilla Firefox\config.js" "C:\Program Files\Mozilla Firefox\config.js.backup"
copy "C:\Program Files\Mozilla Firefox\defaults\pref\channel-prefs.js" "C:\Program Files\Mozilla Firefox\defaults\pref\channel-prefs.js.backup"

REM Change directory to the location of the batch file
cd /d %~dp0

REM Copy config.js from the current directory to Mozilla Firefox directory
copy config.js "C:\Program Files\Mozilla Firefox\"

REM Copy channel-prefs.js from the current directory to Mozilla Firefox defaults/pref directory
copy channel-prefs.js "C:\Program Files\Mozilla Firefox\defaults\pref\"
REM DONE!
timeout 10