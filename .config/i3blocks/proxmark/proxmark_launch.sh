#!/bin/sh

cd ~/proxmark3/client
find . -type f -name "*.eml" -print0 | xargs -0 dos2unix
./proxmark3 /dev/$(dmesg | grep -om1 ttyACM.)
