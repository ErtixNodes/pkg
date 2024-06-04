abuild-sign -e

find ./repo -type d -exec bash buildpackage.sh {} \;
