#!/bin/bash
play .StartDay.wav
#	Websites



gnome-terminal -- bash -c "🪶acidental.sh; exec bash"; 
gnome-terminal -- bash -c "🪶marketsquare.sh; exec bash"; 

#gnome-terminal -- bash -c "taskwarrior; exec bash";
#gnome-terminal -- bash -c "calcurse; exec bash"; 
#gnome-terminal -- bash -c "neomutt; exec bash"; 
#gnome-terminal -- bash -c "ledger.sh; exec bash"; 
#	C&C
tmuxinator start foxys
