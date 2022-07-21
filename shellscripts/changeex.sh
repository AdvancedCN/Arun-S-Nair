#!bin/bash
dir=$1
for f in `ls $dir/*`
do
	mv $f $f.q
done

