#!/bin/bash

# Check if the argument is ./repo or ./repo/x86_64
if [ "$1" == "./repo" ] || [ "$1" == "./repo/x86_64" ]; then
    # Ignore and exit with code 0
    exit 0
else
    # Execute the list of commands if the directory is not ./repo or ./repo/x86_64
    echo "Processing directory: $1"

    # Add your commands here
    # Example commands:
    # cd "$1"
    # make
    # make install
    cd "$1"
    abuild -P ../repo /__w/pkg/pkg/repo

    # Exit with success code
    exit 0
fi
