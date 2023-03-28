#!/bin/bash
#echo hi
ppwd=$(pwd)
cd $ppwd/Crystals/
gnome-terminal -- bash -c "bash ▶horus.sh; exec bash";

python3 ▶speech.py
