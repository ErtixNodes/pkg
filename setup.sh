wget -P /etc/apk/keys https://ertixnodes.github.io/pkg/info@bastothemax.nl-666178c1.rsa.pub
echo "https://ertixnodes.github.io/pkg/repo" >> /etc/apk/repositories
apk update
