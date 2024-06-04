#!/bin/bash

dir=$(pwd)

if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    echo "Ignoring $1...."
else
    echo "Processing directory: $1"

    cd "$1"
    echo "$(pwd)"
    abuild -P $dir build
    abuild -P $dir index

    echo "Built $1!"
fi
