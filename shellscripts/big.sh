#!bin/bash
echo "Enter two num"
read a
read b
if [ $a -gt $b ]
then
	echo "a is big"
else
	echo "b is big"
fi
