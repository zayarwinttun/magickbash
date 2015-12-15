#!/bin/bash

#bash magick.sh image.jpg ??

file=( `echo $1 | tr -s '.' ' '` )
saveasfile=export/${file[0]}-$2.${file[1]}
case $2 in
    "implode" ) convert $1 -implode 1 $saveasfile
        ;;
    "resize" ) convert $1 -implode 400 $saveasfile
        ;;
    "scale" ) convert $1 -scale 50% $saveasfile
        ;;
    "rotate" ) convert $1 -rotate -90 $saveasfile
        ;;
    "crop" ) convert $1 -crop '400x400+170+50' $saveasfile
        ;;
    "border" ) convert $1 -bordercolor SkyBlue -border 50x50 $saveasfile
        ;;
    "flip" ) convert $1 -flip $saveasfile
        ;;
    "flop" ) convert $1 -flop $saveasfile
        ;;
    "charcoal" ) convert $1 -charcoal 2 $saveasfile
        ;;
    "draw" ) convert $1 -fill white -draw 'circle 200,100 120,40' -fill blue -draw 'fill-opacity 0.8 rectangle 150,60 250,80' $saveasfile
esac
bash join.sh $1 $saveasfile $2
