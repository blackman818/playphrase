@echo off
setlocal EnableDelayedExpansion

set media_dir="J:\English AudioBooks"

for /L %%n in (1,0,1) do (
  set /p phrase="Phrase: "
  if /I "!phrase!"=="q" call :stop
  if /I "!phrase!"=="x" call :stop
  if /I "!phrase!"=="exit" call :stop
  python videogrep.py --mpv "--video=no --force-window=yes --osc=no" --input %media_dir% "!phrase!"
)

:stop
call :__stop 2>nul

:__stop
() creates a syntax error, quits the batch
