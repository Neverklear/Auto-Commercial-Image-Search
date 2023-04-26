@echo off
setlocal EnableDelayedExpansion

set INPUT_FILE=input.txt
set SEARCH_ENGINE_URL=https://www.google.com/search?q=
for /f "tokens=* delims= " %%a in (%INPUT_FILE%) do (
set query=%%a
start "" "%SEARCH_ENGINE_URL%!query!&tbm=isch&tbs=il:ol&hl=en&sa=X&ved=0CAAQ1vwEahcKEwjoyNr6-Mf-AhUAAAAAHQAAAAAQAg&biw=1903&bih=880"
)