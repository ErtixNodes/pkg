abuild-sign -e

echo "- Starting build"

find ./repo -maxdepth 1 -type d -exec bash buildpackage.sh {} \;

echo "- Build finished!"

dir="$(pwd)"

abuild -P $dir listpkg
