#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jinyeeng/Downloads/RubikCube-af660b02594911b39652037663f50280ce7ec755/kociemba/kociembaHls/solution1/.autopilot/db/a.g.bc ${1+"$@"}
