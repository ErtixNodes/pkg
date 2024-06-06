#!/bin/bash

dir=$(pwd)

if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    echo "Ignoring $1...."
else
    echo "Processing directory: $1"
    abuild -P $dir build

    abuild-sign -k ~/.abuild/info@bastothemax.nl-666178c1.rsa -p ~/.abuild/info@bastothemax.nl-666178c1.rsa.pub $(pwd)/../
    abuild -P $dir index

    echo "Built $1!"
fi
