START(){
	ID=$1
	Client Side Snapper
	echo $ID | bash log.sys
}
END(){
	cd ..
	p=$( pwd )
	cd $p/Crystals
	bash wipef.sys
}

#!/bin/bash

#. stamp.s
#START 8
#		
#END

#!/bin/bash
. stamp.sh
	
	gnome-terminal -- bash -c "exec bash"; 
	cd ..
	p=$( pwd )
	cd $p/huh/Crystals
	bash wipef.sys

