#! /bin/bash

# cut the 2nd and the 7nd letter from the typped words.

while read i
do
	echo $i | cut -c2,7 -
done
