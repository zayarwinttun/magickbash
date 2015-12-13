#!/bin/bash

file=( `echo $1 | tr -s '.' ' '`)
case $2 in
    "implode" ) convert $1 -implode 1 ${file[0]}-$2.${file[1]}
        ;;
esac
bash join.sh $1 ${file[0]}-$2.${file[1]}
