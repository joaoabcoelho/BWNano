#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <bg colour>[black,white]"
  exit
fi

echo "Setting nano colour syntax for $1 background"

BWNANO=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

echo "BWNano path is $BWNANO"

cp $BWNANO/$1/* $BWNANO/

if [ -f ~/.nanorc ]; then
  echo '~/.nanorc file exists. Creating backup at ~/.nanorc.backup'
  mv ~/.nanorc ~/.nanorc.backup
fi

cp $BWNANO/nanorc.template $BWNANO/nanorc.copy

sed -i "s#<MyBWNano>#$BWNANO#g" nanorc.copy

mv nanorc.copy ~/.nanorc

echo "New nanorc file created at ~/.nanorc"
echo "You are good to go!"
