# ErtixNodes Packages
Custom packages for ertixnodes

## What is this

Repository with aports that I use and isnt accept in Alpine Testing repo due guidelines.

## Instructions

1.  Import the sign key

    ```bash
    wget -P /etc/apk/keys https://alpine.fabricio.dev/hi@fabricio.dev-63f73b9a.rsa.pub
    ```

2.  Enable the repo, testing and edge releases _[assuming you know what you are doing](https://wiki.alpinelinux.org/wiki/Edge)_

    ```bash
    sed -i "s/v[0-9.]\+/edge/g" /etc/apk/repositories
    echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >>/etc/apk/repositories
    echo "https://alpine.fabricio.dev/repo" >>/etc/apk/repositories
    ```

3.  Install the packages you want:

    - `sonarr`
    - `whisparr`

### Others

There are [some aports](https://pkgs.alpinelinux.org/packages?name=&branch=edge&repo=&arch=&maintainer=Fabricio+Silva) merged in Alpine Testing repo:

- `autoscan`
- `autobrr`
- `radarr`
- `prowlarr`
- `lidarr`
- `recyclarr-cli`
