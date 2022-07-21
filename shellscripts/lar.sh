#!bin/bash
a=$1
b=$2
c=$3
echo $a,$b,$c
if [ $a -gt $b ] && [ $a -gt $c ]
then
	echo $a greater than $b and $c

elif [ $b -gt $c ] && [ $b -gt $a ]
then
	echo $b greater than $a and $c
else 
	echo $c greater than $a and $b
fi




