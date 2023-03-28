bold=$(tput bold)
normal=$(tput sgr0)
col="$(tput cols)"

A=$(bash csv.sh)
#cp ~/.config/calcure/events.csv ~/pIxI/menu
menu()
{


echo
echo -e "\t$1"
echo


#calendar 
echo -e ${bold}"\tToday:"

echo
#printf '%(%Y-%m-%d)T\n' -1
echo -e ${normal}"\t$A"
#emote

#echo -e ${bold}"\tProgress:"

#bash bar.sh
echo ${normal}
#hledger cashflow -f Expenses_ING.ledger
sleep 1
#echo '[1][2][3]'
#case
#*1*)	
#*2*)
#*3*)
}

while true
do
clear
menu "(◕ᴥ◕ʋ"
sleep 2

clear
menu "(❍ᴥ❍ʋ)"
sleep 2
done
