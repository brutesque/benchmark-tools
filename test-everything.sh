#!/bin/bash

## This script will keep testing

# Exit this script on the first error.
#------------------------------------------------------------------------------
set -e

## Testing first gpu with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 0 -a /tmp/benchmark-octane-gpu1.txt && tail -n 1 /tmp/benchmark-octane-gpu1.txt
## Testing second gpu with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 1 -a /tmp/benchmark-octane-gpu2.txt && tail -n 1 /tmp/benchmark-octane-gpu2.txt
## Testing third gpu with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 2 -a /tmp/benchmark-octane-gpu3.txt && tail -n 1 /tmp/benchmark-octane-gpu3.txt
## Testing all gpu's with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -a /tmp/benchmark-octane.txt && tail -n 1 /tmp/benchmark-octane.txt

## Testing cpu with CineBench
/Applications/MAXON/CINEBENCH_R15/CINEBENCH\ OSX.app/Contents/MacOS/CINEBENCH\ OSX -cb_cpux
