#!/bin/bash

case $1 in 
on)
    echo "Enabling TTY for containerized commands"
    export TERMS="-t"
    ;;
off)
    echo "Disabling TTY for containerized commands"
    unset TERMS
    ;;
*)
    if [ ! -z $TERMS ]; then
        echo "TTY for containerized commands is ENABLED"
    else
        echo "TTY for containerized commands is DISABLED"
    fi

esac