#! /bin/bash
while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4 rec_column5 rec_column6 rec_column7
do
  a=$(echo "$rec_column2")
  b=$(echo "$rec_column3")
  c=$(echo "$rec_column4")
  cont=$(echo "$rec_column5")
  
done < <(tail -n +2 events.csv)

t=$(printf '%(%Y%m%d)T\n' -1)
#echo $t

A=$(echo "$a$b$c" | sed 's/\0//g')
B=$(echo "$t" | sed 's/\0//g')
if [  "$A" == "$B"  ]; 
then
echo $cont

fi
