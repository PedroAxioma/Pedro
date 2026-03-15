#!/bin/bash

DIR="$HOME/wallpaper"

IMG=$(ls $DIR | shuf -n 1)

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$DIR/$IMG"
hyprctl hyprpaper wallpaper "eDP-1,$DIR/$IMG"
