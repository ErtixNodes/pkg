echo $(pwd)
cat ~/.abuild/abuild.conf
find ./repo -type d -exec bash buildpackage.sh {} \;
