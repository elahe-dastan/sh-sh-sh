#!/bin/bash

parham=love
echo $parham

chmod +x subshell.sh
./subshell.sh

export parham=life
./subshell.sh