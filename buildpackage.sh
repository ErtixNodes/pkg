#!/bin/bash

dir=$(pwd)
dest="$dir"

if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    echo "Ignoring $1...."
else
    name=$(git rev-parse --short HEAD)
    echo "Now in $dir!"
    echo "Processing directory: $1"

    cd $1
    
    # abuild -P $dest -k build
    abuild -D $name -P $dest
    echo "build done"

    abuild -D $name -P $dest package

    echo "list pkg"
    abuild -D $name -P $dest listpkg
    echo "list done"

    echo "indexing..."
    abuild -D $name -P $dest index
    echo "index done"

    echo "Built $1!"

    cd $dir
    echo "cd back"
fi
