#!/usr/bin/sh
if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root (sudo)"
  exit
fi

DOG=/usr/bin/dog
if test -f "$DOG"; then
    echo "[Dog installer || Tekronet 2022]"
    rm /usr/bin/dog
    echo "Dog removed"
    exit
fi
echo "Dog is not installed on your system. Exiting installer."