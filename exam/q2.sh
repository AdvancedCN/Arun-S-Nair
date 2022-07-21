#!bin/bash
echo Enter two numbers
read a
read b
i=1
n=0
lcm=0
gcd=0

if [ $a -gt $b ]
then
	n=$a
else
	n=$b
fi

for((i=1;i<=$n;i++))
do
	r1=`expr $a % $i`
	r2=`expr $b % $i`
	if [ $r1 -eq 0 ] && [ $r2 -eq 0 ]
	then
		gcd=$i
	fi
	r3=`expr $i % $a`
	r4=`expr $i % $b`
	if [ $r3 -eq 0 ] && [ $r4 -eq 0 ]
	then
		lcm=$i
		break
	fi

done
if [ $lcm -eq 0 ]
then
	lcm=`expr $a \* $b`
fi
echo lcm=$lcm
echo gcd=$gcd

