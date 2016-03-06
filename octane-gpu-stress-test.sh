#!/bin/bash

#!/bin/bash

## This script will keep rendering with all gpu's to test long-term render performance

while true
do
	echo "Press [CTRL-C to stop.."
	sleep 1

#	/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 2 -a ~/benchmark2.txt && tail -n 1 ~/benchmark2.txt
	## Testing all gpu's with octanebench
	/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -a ~/benchmark2.txt && tail -n 1 ~/benchmark2.txt
done
