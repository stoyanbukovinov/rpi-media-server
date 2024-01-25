#!/bin/bash

for d in */ ; do
    [ -L "${d%/}" ] && continue
    ln -s ../.env ./$d/.env
    #echo "$d"
done
