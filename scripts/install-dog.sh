#!/usr/bin/sh
if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root (sudo)"
  exit
fi

DOG=/usr/bin/dog
if test -f "$DOG"; then
    echo "Dog is already installed on your system. Exiting installer."
    exit
fi

echo "[Dog installer || Tekronet 2022]"
wget https://github.com/Tekronet/dog/releases/download/1.2.1/dog
chmod +x ./dog
mv ./dog /usr/bin/


