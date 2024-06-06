#!/bin/bash

dir=$(pwd)

if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    echo "Ignoring $1...."
else
    echo "Processing directory: $1"

    cd $1
    
    abuild -P $dir build

    echo "build done"
    # abuild-sign -k ~/.abuild/info@bastothemax.nl-666178c1.rsa -p ~/.abuild/info@bastothemax.nl-666178c1.rsa.pub $(pwd)/../

    echo "list pkg"
    abuild -P $dir listpkg
    
    abuild -P $dir index
    echo "index done"

    echo "Built $1!"

    cd $dir
    echo "cd back"
fi
