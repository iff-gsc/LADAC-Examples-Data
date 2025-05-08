#! /bin/bash

# Get directory of the script
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
AIRCRAFTPATH=$SCRIPTPATH

# Set FG_AIRCRAFT environment variable
export FG_AIRCRAFT=$AIRCRAFTPATH:${FG_AIRCRAFT}

# Execute FlightGear start command
fgfs --aircraft=IRIS \
    --fdm=null \
    --native-fdm=socket,in,30,localhost,5502,udp \
    --native-ctrls=socket,out,30,127.0.0.1,5503,udp \
    --fog-disable \
    --disable-clouds \
    --disable-sound \
    --disable-ai-models \
    --disable-ai-traffic \
    --disable-random-objects \
    --disable-real-weather-fetch \
    --timeofday=noon \
    --in-air \
    --lat=52.318701 \
    --lon=10.547244 \
    --altitude=79.9 \
    --heading=85.5 \
    --offset-distance=4.72 \
    --offset-azimuth=0 \
    --geometry=640x480 \
    --max-fps=30 \
    --enable-terrasync
