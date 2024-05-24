echo $(pwd)
find ./repo -type d -exec bash buildpackage.sh {} \;
