#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <bg colour>[black,white]"
  exit
fi

cp ~/BWNano/$1/* ~/BWNano/
