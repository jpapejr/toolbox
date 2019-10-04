#!/bin/bash
# Global Route Check Script
# John Pape jtpape@us.ibm.com
# Args:
# $1  - host name to check for
# $2  - a [valid] CF org
# $3  - a [valid] CF space
#
#
#

if [ "$#" -ne 3 ]; then
  echo "$(tput setaf 1)=================== Nope, Nope, Nope ===================$(tput sgr0)"
  head $0
  exit
fi

#us-south
bx target -r us-south -o $2 -s $3
bx app route-check $1 mybluemix.net
#us-east
bx target -r us-east -o $2 -s $3
bx app route-check $1 us-east.mybluemix.net
#Germany
bx target -r eu-de -o $2 -s $3
bx app route-check $1 eu-de.mybluemix.net
#United Kingdom
bx target -r eu-gb -o $2 -s $3
bx app route-check $1 eu-gb.mybluemix.net
#Sydney
bx target -r au-syd -o $2 -s $3
bx app route-check $1 au-syd.mybluemix.net