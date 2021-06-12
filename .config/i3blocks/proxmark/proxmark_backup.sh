#!/bin/sh

De=$(date +"%H-%M-%S_%m.%d.%Y")
if ! [ -d ~/Dumps ]; then mkdir ~/Dumps; fi
mkdir ~/Dumps/$De
cp ~/proxmark3/client/*.eml ~/Dumps/$De
cp ~/proxmark3/client/*.bin ~/Dumps/$De
cp ~/proxmark3/client/*.json ~/Dumps/$De
cp ~/proxmark3/client/*.html ~/Dumps/$De
