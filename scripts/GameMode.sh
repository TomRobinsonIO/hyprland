#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==2{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    swww kill 
    killall waybar
    notify-send "Game Mode On"
    exit
fi
hyprctl reload 
swww init
# Restart waybar
killall waybar
exec ~/.config/hypr/scripts/Waybar.sh
notify-send "Game Mode Off"
exit
