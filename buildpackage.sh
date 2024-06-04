#!/bin/bash

dir=$(pwd)

if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    echo "Ignoring $1...."
else
    echo "Processing directory: $1"

    cd "$1"
    echo "$(pwd)"
    abuild -P $dir -v build
    abuild -P $dir -k ~/.abuild/bttm-6650b009.rsa -v index

    echo "Built $1!"
fi
