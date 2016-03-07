#!/bin/bash

#!/bin/bash

## This script will keep rendering with all gpu's to test long-term render performance

# Exit this script on the first error.
#------------------------------------------------------------------------------
set -e

while true
do
	sleep 1

	## Testing all gpu's with octanebench
	/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -a /tmp/benchmark-octane.txt && tail -n 1 /tmp/benchmark-octane.txt
done
