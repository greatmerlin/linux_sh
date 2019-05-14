#! /bin/bash

while read i
do
	echo $i | cut -c1-4
done
