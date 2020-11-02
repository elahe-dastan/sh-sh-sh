#!/bin/bash
env

echo "first env finished"

export $(cat pairs.txt)

env
