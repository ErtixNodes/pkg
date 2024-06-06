#!/bin/bash

dir=$(pwd)
dest="$dir"

if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    echo "Ignoring $1...."
else
    echo "Now in $dir!"
    echo "Processing directory: $1"

    cd $1
    
    abuild -P $dest -k build
    echo "build done"

    abuild -P $dest -k package

    # abuild-sign -k ~/.abuild/info@bastothemax.nl-666178c1.rsa -p ~/.abuild/info@bastothemax.nl-666178c1.rsa.pub $(pwd)/../

    echo "list pkg"
    abuild -v -P $dest listpkg
    
    abuild -v -P $dest index
    echo "index done"

    echo "Built $1!"

    cd $dir
    echo "cd back"
fi
