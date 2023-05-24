#! /bin/bash

# Get directory of the script
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
AIRCRAFTPATH=$SCRIPTPATH

# Set FG_AIRCRAFT environment variable
export FG_AIRCRAFT=$AIRCRAFTPATH:${FG_AIRCRAFT}

# Execute FlightGear start command
fgfs --aircraft=IRIS-with-SuspendedLoad \
     --fdm=null --native-fdm=socket,in,30,localhost,5502,udp \
	 --native-ctrls=socket,out,30,127.0.0.1,5503,udp \
	 --fog-fastest --disable-clouds --disable-sound \
	 --start-date-lat=2004:06:01:09:00:00 \
	 --in-air --lat=37.6117 --lon=-122.3782 --altitude=7224 \
	 --heading=113 --offset-distance=4.72 --offset-azimuth=0 \
	 --geometry=640x480 --max-fps=30 --enable-terrasync \
