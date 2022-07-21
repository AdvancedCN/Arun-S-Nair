#!bin/bash
echo "Enter the password"
read pass
len="${#pass}"
if test $len -gt 8
then
	echo "$pass" | grep -q [0-9]
	if test $? -eq 0
	then
		echo $pass | grep -q [A-Z]
		if test $? -eq 0
		then
			echo $pass | grep -q [a-z]
			if test $? -eq 0
			then
				echo "ok"
			else
				echo "No lowercase included"
			fi

		else
			echo "No Caps included"
		fi
	else
		echo "No digits included"
	fi	
else
	echo "less than 8"
fi
