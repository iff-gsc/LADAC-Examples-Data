@echo off

REM Get directory of the script
set "AIRCRAFTPATH=%~dp0"

REM Set FG_AIRCRAFT environment variable
if defined FG_AIRCRAFT (
    set "FG_AIRCRAFT=%AIRCRAFTPATH%;%FG_AIRCRAFT%"
) else (
    set "FG_AIRCRAFT=%AIRCRAFTPATH%"
)
echo FG_AIRCRAFT=%FG_AIRCRAFT%

call fg_install_searcher.bat

call fg_aircraft_path.bat

cd %FG_PATH%

.\\bin\fgfs --aircraft=ViTOLmina --fdm=null --native-fdm=socket,in,30,localhost,5502,udp --native-ctrls=socket,out,30,127.0.0.1,5503,udp --fog-fastest --disable-clouds --start-date-lat=2004:06:01:09:00:00 --disable-sound --in-air --enable-freeze --lat=37.6117 --lon=-122.3782 --altitude=7224 --heading=113 --offset-distance=4.72 --offset-azimuth=0 --enable-terrasync
