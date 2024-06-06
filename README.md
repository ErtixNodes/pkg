# ErtixNodes Packages
Custom packages for ertixnodes

## What is this

Repository with aports that I use and isnt accept in Alpine Testing repo due guidelines.

## Instructions

1.  Import the sign key

    ```bash
    wget -P /etc/apk/keys https://ertixnodes.github.io/pkg/info@bastothemax.nl-666178c1.rsa.pub
    ```

2.  Enable the repo, testing and edge releases _[assuming you know what you are doing](https://wiki.alpinelinux.org/wiki/Edge)_

    ```bash
    echo "https://ertixnodes.github.io/pkg/" >> /etc/apk/repositories
    ```

3.  Install the packages you want:

    - `bttmtest`