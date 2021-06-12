#!/bin/sh

# Base-devel
if ! pacman -Qi groff > /dev/null; then yes | sudo pacman -S groff; fi
if ! pacman -Qi autoconf > /dev/null; then yes | sudo pacman -S autoconf; fi
if ! pacman -Qi automake > /dev/null; then yes | sudo pacman -S automake; fi
if ! pacman -Qi binutils > /dev/null; then yes | sudo pacman -S binutils; fi
if ! pacman -Qi bison > /dev/null; then yes | sudo pacman -S bison; fi
if ! pacman -Qi fakeroot > /dev/null; then yes | sudo pacman -S fakeroot; fi
if ! pacman -Qi file > /dev/null; then yes | sudo pacman -S file; fi
if ! pacman -Qi findutils > /dev/null; then yes | sudo pacman -S findutils; fi
if ! pacman -Qi flex > /dev/null; then yes | sudo pacman -S flex; fi
if ! pacman -Qi gawk > /dev/null; then yes | sudo pacman -S gawk; fi
if ! pacman -Qi gcc > /dev/null; then yes | sudo pacman -S gcc; fi
if ! pacman -Qi gettext > /dev/null; then yes | sudo pacman -S gettext; fi
if ! pacman -Qi gzip > /dev/null; then yes | sudo pacman -S gzip; fi
if ! pacman -Qi libtool > /dev/null; then yes | sudo pacman -S libtool; fi
if ! pacman -Qi m4 > /dev/null; then yes | sudo pacman -S m4; fi
if ! pacman -Qi make > /dev/null; then yes | sudo pacman -S make; fi
if ! pacman -Qi patch > /dev/null; then yes | sudo pacman -S patch; fi
if ! pacman -Qi pkgconf > /dev/null; then yes | sudo pacman -S pkgconf; fi
if ! pacman -Qi sed > /dev/null; then yes | sudo pacman -S sed; fi
if ! pacman -Qi texinfo > /dev/null; then yes | sudo pacman -S texinfo; fi
if ! pacman -Qi which > /dev/null; then yes | sudo pacman -S which; fi
# Base-devel
if ! pacman -Qi readline > /dev/null; then yes | sudo pacman -S readline; fi
if ! pacman -Qi bzip2 > /dev/null; then yes | sudo pacman -S bzip2; fi
if ! pacman -Qi arm-none-eabi-gcc > /dev/null; then yes | sudo pacman -S arm-none-eabi-gcc; fi
if ! pacman -Qi arm-none-eabi-newlib > /dev/null; then yes | sudo pacman -S arm-none-eabi-newlib; fi
if ! pacman -Qi qt5-base > /dev/null; then yes | sudo pacman -S qt5-base; fi
#if ! pacman -Qi bluez; then yes | sudo pacman -S bluez; fi # - for bluetooth
if ! pacman -Qi dos2unix > /dev/null; then yes | sudo pacman -S dos2unix; fi # Convert CRLF to LF encoding for EML files
# Git clone
if ! [ -d ~/proxmark3 ]; then git clone https://github.com/RfidResearchGroup/proxmark3.git ~/proxmark3; fi
if ! [ -f ~/proxmark3/Makefile.platform ]; then sh -c 'printf "PLATFORM=PM3GENERIC\n#PLATFORM_EXTRAS=BTADDON\n#STANDALONE=HF_MSDSAL\n" > ~/proxmark3/Makefile.platform'; fi

cd ~/proxmark3
git pull origin master --allow-unrelated-histories
make clean && make -j
./pm3-flash-all
cd ~/proxmark3/client
find . -type f -name "*.eml" -print0 | xargs -0 dos2unix
sleep 5
./proxmark3 /dev/$(dmesg | grep -om1 ttyACM.)
