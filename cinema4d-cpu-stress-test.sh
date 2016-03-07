#!/bin/bash

#!/bin/bash

## This script will keep rendering with all gpu's to test long-term render performance

# Exit this script on the first error.
#------------------------------------------------------------------------------
set -e

while true
do
	sleep 1

	## Testing cpu with CineBench
	/Applications/MAXON/CINEBENCH_R15/CINEBENCH\ OSX.app/Contents/MacOS/CINEBENCH\ OSX -cb_cpux
done
