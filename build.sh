abuild-sign -e

echo "- Starting build"

find ./repo -type d -exec bash buildpackage.sh {} \;
