#!/bin/bash
if [ ! -z "$1" ]; then
    oc exec -it $(oc get pods -l app=shell  | grep shell | cut -d" " -f1) -c shell-$1 -- zsh
else
    echo "There are two shell containers, 1 or 2. You must specify one to use this command correctly. Try again."
fi