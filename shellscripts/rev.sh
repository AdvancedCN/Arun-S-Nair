#!bin/bash
if [ $# -ne 1 ]
then
	echo Invalid input
else
	a=$1
	rev=0
	b=0
	while [ $a -gt 0 ]
	do
		b=`expr $a % 10`
		rev=`expr $rev \* 10`
		rev=`expr $rev + $b`
		a=`expr $a / 10`
	done
	echo $rev
fi
