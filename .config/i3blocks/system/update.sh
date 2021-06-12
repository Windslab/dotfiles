#!/bin/sh

# remove all chace
yes | pacman -Scc

# update all
yes | pacman -Syu
