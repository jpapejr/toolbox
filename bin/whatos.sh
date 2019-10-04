#!/bin/bash
if [[ "$OSTYPE" == "darwin"* ]]; then
	OS="mac"
elif [[ "$OSTYPE" == "linux-gnu" ]];then
	OS="linux"
fi

echo $OS
