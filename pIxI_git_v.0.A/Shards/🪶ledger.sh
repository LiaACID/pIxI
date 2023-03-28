#!/bin/bash
gnome-terminal -- bash -c "ledger-analytics -f outr.txt; exec bash" 
gnome-terminal -- bash -c "firefox http://127.0.0.1:3000/ ; exec bash" 



		

