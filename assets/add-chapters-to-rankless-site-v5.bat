@echo off
setlocal

set "REPO=C:\Users\antho\Downloads\rankless-site-v5"
set "BASE=%REPO%\assets\chapters"

if not exist "%REPO%" (
  echo Repo folder not found:
  echo %REPO%
  pause
  exit /b 1
)

for %%N in (01 02 03 04 05 06 07 08 09 10 11 12 13 14 15) do (
  mkdir "%BASE%\ch%%N" 2>nul
  if not exist "%BASE%\ch%%N\.gitkeep" type nul > "%BASE%\ch%%N\.gitkeep"
)

echo.
echo Created chapter folders ch01 through ch15 under:
echo %BASE%
echo.
echo Next commands:
echo cd /d "%REPO%"
echo git add assets/chapters
echo git commit -m "Add chapter asset folders"
echo git push
echo.
pause
