@echo off

call fg_install_searcher.bat

call fg_aircraft_path.bat

cd /d %FG_PATH%

.\\bin\fgfs --aircraft=IRIS --fdm=null --native-fdm=socket,in,30,localhost,5502,udp --native-ctrls=socket,out,30,127.0.0.1,5503,udp --fog-fastest --disable-clouds --start-date-lat=2004:06:01:09:00:00 --disable-sound --in-air --lat=37.6117 --lon=-122.3782 --altitude=7224 --heading=113 --offset-distance=4.72 --offset-azimuth=0 --enable-terrasync
