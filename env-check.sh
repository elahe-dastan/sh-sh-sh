#!/bin/bash

#export parham=love
if [ -z "$parham"]; then
  echo "empty"
else
  echo $parham
fi

# check if a file exists
#touch .env
if [ ! -f ".env" ]; then
  echo ".env doesn't exist"
  exit 1
fi

# redirect
ls > files
