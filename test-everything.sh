#!/bin/bash

## This script will keep testing

## Testing first gpu with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 0 -a ~/benchmark0.txt && tail -n 1 ~/benchmark0.txt
## Testing second gpu with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 1 -a ~/benchmark1.txt && tail -n 1 ~/benchmark1.txt
## Testing third gpu with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -g 2 -a ~/benchmark2.txt && tail -n 1 ~/benchmark2.txt
## Testing all gpu's with octanebench
/Applications/OctaneBench\ 2.17.app/Contents/MacOS/octane_demo --benchmark -a ~/benchmark2.txt && tail -n 1 ~/benchmark2.txt

## Testing cpu with CineBench
/Applications/MAXON/CINEBENCH_R15/CINEBENCH\ OSX.app/Contents/MacOS/CINEBENCH\ OSX -cb_cpux
