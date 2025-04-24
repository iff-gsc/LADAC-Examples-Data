@echo off
setlocal EnableDelayedExpansion

set fg_versions_list=0 1 2 3 4
set fg_parent_dir_list=0 1 2 3 4
set fg_versions_nums=0 1 2 3 4
set /A num_fg_versions=0
set folder_name=0

call :fgSearcher "%ProgramFiles%"
call :fgSearcher "%ProgramFiles(x86)%"

if %num_fg_versions%==0 (
	echo Error: FlightGear was NOT found!
	pause
    exit /b 1
)

echo Found the following FlightGear version(s):
for /l %%i in (1,1,%num_fg_versions%) do (
    echo %%i  !fg_versions_list[%%i]!
)

set choice=1
if %num_fg_versions% gtr 1 (
    set /p choice="Please select one of the above options [1-%num_fg_versions%]: "
)

set folder_name=!fg_versions_list[%choice%]!
set parent_folder_name=!fg_parent_dir_list[%choice%]!
set fg_path=%parent_folder_name%\%folder_name%

if exist "!fg_path!\data" (
    set "fg_root=!fg_path!\data"
) else (
    set "found="
    for /f "usebackq tokens=*" %%A in (`"!fg_path!\bin\fgfs" --version 2^>^&1`) do (
        set "line=%%A"
        echo !line! | findstr /b "FG_ROOT=" >nul
        if !errorlevel! == 0 (
            for /f "tokens=2 delims==" %%B in ("!line!") do (
                set "fg_root=%%B"
                set "found=1"
            )
        ) 
    )
    if not defined found (
        echo.
        echo Error: FlightGear data folder not found
        echo Please ensure that the FlightGear data folder exists in the expected location.
        echo You can download the data from within the FlighGear launcher or from the official FlightGear website: https://www.flightgear.org/download/
        echo After downloading, place the data folder in the appropriate directory and try running this script again.
        pause
        exit /b 1
    )
)

echo.
echo FlightGear data folder found at !fg_root!
echo Starting !fg_versions_list[%choice%]! from !fg_path!
echo.

endlocal & (
	set "FG_PATH=%fg_path%"
	set "FG_ROOT=%fg_root%"
)
exit /b 0

:fgSearcher
set "fg_search_path=%~1"
for /d %%P in ("%fg_search_path%\*") do (
    set folder_name=%%~nxP
    if "!folder_name:~0,10!"=="FlightGear" (
        set /a num_fg_versions+=1
        set "fg_versions_list[!num_fg_versions!]=!folder_name!"
        set "fg_versions_nums[!num_fg_versions!]=!num_fg_versions!"
        set "fg_parent_dir_list[!num_fg_versions!]=%fg_search_path%"
    )
)
goto :eof
