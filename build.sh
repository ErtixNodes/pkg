abuild-sign -e

echo "- Starting build"

find ./repo -maxdepth 1 -type d -exec bash buildpackage.sh {} \;

find . | grep APK

echo "- Build finished!"
