#! /bin/bash

cut -d $'\t' -f1-3 | while read i
do
	echo "$i"
done
