@echo off
setlocal EnableDelayedExpansion

set INPUT_FILE=input.txt
set SEARCH_ENGINE_URL=https://duckduckgo.com/?q=

for /f "tokens=* delims= " %%a in (%INPUT_FILE%) do (
  set query=%%a
  set query=!query: =+!
  start "" "%SEARCH_ENGINE_URL%!query!&iax=images&ia=images&iaf=license%3AShareCommercially"
)
