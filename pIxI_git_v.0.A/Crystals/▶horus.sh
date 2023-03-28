wakeword=mina


while true
do
if grep -q $wakeword crocodile.dat
then

play .Yes.mp3
triggers=$(<crocodile.dat)
echo $triggers


bind(){	
s='.sh' 
ss='🪶'
echo $ss$1$s | bash ▶light.sh
echo binding
play .Starting.wav
}

casefolderparser(){
		# C. PARSE ALL CASE STATEMENTS IN EACH FILE & ASSEMBLE ALL CASE STATEMENTS FOR EACH CODENAME
		caseparser(){
			caseassembler(){
				pre=*
				medius=$1
				post=* |
				echo $pre$medius$post
				}
			
				#$file
				cat $1 | while read line || [[ -n $line ]];
					do	#$term
							caseassembler $line
					done	#target code
		#								bind $2;;
	}

	# A. FOR EVERY FILE IN THE WAKEWORD FOLDER,
	dir="path"
		for filenames in "$dir"/*; do
		  echo "$filenames"
		  	# B.  AND FOR EVERY LINE IN THE CODENAME FILE,
		  	#$Codenamelist
			cat $2 | while read line || [[ -n $Program ]];
					do	#$term
							caseparser $filenames$program
					done	#target code
		  
		done
	
}


case $triggers in

#caseparser

*'calendar'*)
				bind calcurse;;
*'browser'*) 
				bind firefox;;
*'email'* | *'mail'*)
				bind geary;;
*'finances'*)
				bind finances;;	
*'projects'* | *'project'*)				
				bind taskwarrior;;
*'movie'* | *'film'*)				
				bind anime;;
*'terminal'*)				
				bind terminal;;
*'update'*)				
				bind update;;
*"to do"* | *"list"*)
				bind taskwarrior;;
*"morning"*)				
				bind morning;;
*"back"*)				
				bind kESC;;
#*"up"*)				
#				bind kUP;;
#*"down"*)				
#				bind kDOWN;;
*"space"*)				
				bind kSPACE;;
*"up"*)				
				bind kPAGeUP;;
*"down"*)				
				bind kPAGeDOWN;;


	*)
				echo Mina is Confused~;;

esac 
fi 
done

