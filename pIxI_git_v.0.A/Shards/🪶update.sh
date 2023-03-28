#!/bin/bash
. stamp.s
START 8
	gnome-terminal -- bash -c "sudo apt-get update && sudo apt-get dist-upgrade ; exec bash" ;
END

