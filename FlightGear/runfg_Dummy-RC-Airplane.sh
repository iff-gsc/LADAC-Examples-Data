#! /bin/bash

#setenv LD_LIBRARY_PATH /usr/share/games/flightgear/lib:$LD_LIBRARY_PATH
#setenv FG_ROOT /usr/share/games/flightgear/data
#setenv FG_SCENERY /usr/share/games/flightgear/Scenery:$FG_ROOT/Scenery:$FG_ROOT/WorldScenery

fgfs --fg-aircraft=FlightGear/Dummy-RC-Airplane --aircraft=DummyRcAirplane --fdm=null \
	--native-fdm=socket,in,30,localhost,5502,udp \
	--native-ctrls=socket,out,30,127.0.0.1,5503,udp --fog-fastest \
	--disable-clouds --start-date-lat=2004:06:01:09:00:00 --disable-sound \
	--in-air --lat=52.402437 --lon=10.228787 --altitude=72 \
	--heading=113 --offset-distance=4.72 --offset-azimuth=0 \
	--geometry=640x480 --max-fps=30 --prop:/sim/view=2
#--prop:/sim/current-view/view-number=2
