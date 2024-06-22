#!/bin/bash

while true; do
  wallpapers_dir=$HOME/$1
  selection=$(find $wallpapers_dir -type f -name "*.jpg" -o -name "*.jpeg" | shuf -n1)
  echo "echoing selection... $selection"
  gsettings set org.gnome.desktop.background picture-uri-dark "file://$selection"  
  sleep $2
done
