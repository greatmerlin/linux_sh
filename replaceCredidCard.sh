#! /bin/bash

sed 's/[0-9]\+ /**** /g'

# for credit cards, replace all the digits except the last 4 with asterisk "*"
# this code means: Substitute "multiple digits followed by space" by "**** ".
#Last 4 digits aren't followed by space, hence, won't be replaced by asterisk.
#another form of it: sed -e 's/([0-9]){4} /**** /g'


