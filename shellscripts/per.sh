#!bin/bash
if [ -e s1.txt ]
then
	echo " pass enabled"
fi
if [ -x s1.txt ]
then
	echo "can execute"
else
	echo cannott execute
fi



