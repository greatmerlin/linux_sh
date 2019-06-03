#! /bin/bash

#You are given a CSV file where each row contains the name of a city and its state separated by a comma. 

# other solution with paste: paste -sd '\t'
# -s: Lists the lines side by side.
#-d'\t': Sets the delimiter to a tab.

tr '\n' '\t'
