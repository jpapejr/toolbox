#!/bin/bash
# Global Route Reservation Script
# John Pape jtpape@us.ibm.com
# Args:
# $1  - host name to reserve
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
bx app route-create $3 mybluemix.net -n $1
#us-east
bx target -r us-east -o $2 -s $3
bx app route-create $3 us-east.mybluemix.net -n $1
#Germany
bx target -r eu-de -o $2 -s $3
bx app route-create $3 eu-de.mybluemix.net -n $1
#United Kingdom
bx target -r eu-gb -o $2 -s $3
bx app route-create $3 eu-gb.mybluemix.net -n $1
#Sydney
bx target -r au-syd -o $2 -s $3
bx app route-create $3 au-syd.mybluemix.net -n $1