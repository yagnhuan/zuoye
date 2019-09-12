#!/bin/bash

a=0
for i in zy/*.*
do
	echo "-=-=-="
	if test -s $i 
	then
		let a++
		c=${i#*.}
		mv $i zy/$a.$c
		echo "......."
	else
		rm $i
	fi

done
