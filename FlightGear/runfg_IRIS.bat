@echo off

call fg_install_searcher.bat

"%FG_PATH%\bin\fgfs" ^
    --fg-aircraft=%~dp0 ^
    --aircraft=IRIS ^
    --fdm=null ^
    --native-fdm=socket,in,30,localhost,5502,udp ^
    --native-ctrls=socket,out,30,127.0.0.1,5503,udp ^
    --fog-disable ^
    --disable-clouds ^
    --disable-ai-models ^
    --disable-ai-traffic ^
    --disable-random-objects ^
    --disable-real-weather-fetch ^
    --disable-sound ^
    --timeofday=noon ^
    --in-air ^
    --lat=52.318701 ^
    --lon=10.547244 ^
    --altitude=79.9 ^
    --heading=85.5 ^
    --offset-distance=4.72 ^
    --offset-azimuth=0 ^
    --enable-terrasync
