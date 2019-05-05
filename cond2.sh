#! /bin/bash
#Given three integers (x, y, and z ) representing the three sides of a triangle, identify whether the triangle is Scalene, Isosceles, or Equilateral.
read a
read b
read c

if [[ $a == $b && $b == $c ]]
then
	echo "EQUILATERAL";
elif [[ $a == $b || $b == $c ]]
then
	echo "ISOSCELES";
else
	echo "SCALENE";
fi
