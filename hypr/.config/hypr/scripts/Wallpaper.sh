#!/bin/bash
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
WALLPAPER=$(ls "$WALLPAPER_DIR" | shuf -n 1)
hyprctl hyprpaper wallpaper "DP-1,$WALLPAPER_DIR/$WALLPAPER"
hyprctl hyprpaper wallpaper "DP-2,$WALLPAPER_DIR/$WALLPAPER"
sleep 1
