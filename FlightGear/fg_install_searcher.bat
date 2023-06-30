@echo off
setlocal EnableDelayedExpansion

set fg_versions_list=0 1 2 3 4
set fg_parent_dir_list=0 1 2 3 4
set fg_versions_nums=0 1 2 3 4
set /A num_fg_versions=0
set /A increment=1
set folder_name=0

set "fg_search_path=%programfiles%"
cd /d %fg_search_path%
call:fgSearcher

set "fg_search_path=%programfiles(x86)%"
cd /d %fg_search_path%
call:fgSearcher

if ("%num_fg_versions%"=="0") (
	echo Error: FlightGear was NOT found!
	pause
)

echo Found the following FlightGear version(s):

for /l %%i in (1,1,%num_fg_versions%) do (
	echo !fg_versions_nums[%%i]!  !fg_versions_list[%%i]!
)

set choice=1
if %num_fg_versions% gtr 1 (
	set /p choice="Please select one of the above options [1/2/...]:"
)


set folder_name=!fg_versions_list[%choice%]!
set parent_folder_name=!fg_parent_dir_list[%choice%]!

set fg_path=%parent_folder_name%/%folder_name%

echo Starting FlightGear from: %fg_path%

set fg_root=%fg_path%/data

endlocal & (
	set "FG_PATH=%fg_path%"
	set "FG_ROOT=%fg_root%"
)



:fgSearcher
for /d %%P in ("*") do (
set folder_name=%%P
if "!folder_name:~0,10!"=="FlightGear" (
	set /a num_fg_versions=!num_fg_versions!+%increment%
	set fg_versions_list[!num_fg_versions!]=%%P
	set fg_versions_nums[!num_fg_versions!]=!num_fg_versions!
	set "fg_parent_dir_list[!num_fg_versions!]=%fg_search_path%"
	)
)
goto:eof
