#!/bin/sh

# Git clone
if ! [ -d ~/proxmark3 ]; then git clone https://github.com/RfidResearchGroup/proxmark3.git ~/proxmark3; fi
if ! [ -f ~/proxmark3/Makefile.platform ]; then sh -c 'printf "PLATFORM=PM3GENERIC\n#PLATFORM_EXTRAS=BTADDON\n#STANDALONE=HF_MSDSAL\n" > ~/proxmark3/Makefile.platform'; fi

PL=$(grep 'PLATFORM=PM3*' ~/proxmark3/Makefile.platform | cut -d'=' -f 2)

if [[ $PL == "PM3GENERIC" ]]; then
   sed -i "s/${PL}/PM3RDV4/g" ~/proxmark3/Makefile.platform
   sed -i "s/GENER/RDV4/g" ~/.config/i3blocks/config
   i3-msg restart
else
   sed -i "s/PM3RDV4/PM3GENERIC/g" ~/proxmark3/Makefile.platform
   sed -i "s/RDV4/GENER/g" ~/.config/i3blocks/config
   i3-msg restart
fi
