#! /bin/bash
# evaluate the expression and display the correct output rounding up to 3 decimal places. The expressions may contain characters like +,-,*,/,^

read number

echo $number | bc -l | xargs printf "%.3f\n"
