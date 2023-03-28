file=data.file
outfile=out.Perception.Lv.1

doit(){
	file=$1
	outfile=$2
	#delete all newlines
	sed '/^[[:space:]]*$/d' $file
	echo

	#put each char into separate line
	cat $file | fold -w 1 >d.f

	E=1
	B=$( wc -l < d.f)
	C="$(($B+$E))"

	A=0
	echo $A $C
	while [  $A -le $C  ]
	do


		#Get lines
		lineA=$(head -n 1 d.f)
		lineB=$(head -2 d.f | tail -1 | cut -d ':' -f 1   )

		echo $lineA 
		echo '+'
		echo $lineB
		echo

		End="$(($lineA+$lineB))"
		echo is $End

		echo $End >> $outfile

		sed -i -e "1d" d.f
		sed -i -e "1d" d.f
		
	done
}

doit data.file out.Perception.Lv.1

hehe(){
	doit $1 $2
}

BB=$( wc -l < d.f)
$AA=0
EE=1

while [  $AA -le $BB  ]
do
	CC="$(($AA+$EE))"
	hehe out.Perception.Lv.$AA out.Perception.Lv.$CC
	(( AA++ ))
done
