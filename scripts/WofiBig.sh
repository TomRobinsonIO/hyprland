#!/bin/bash

CONFIG="$HOME/.config/hypr/wofi/WofiBig/config"
STYLE="$HOME/.config/hypr/wofi/style.css"
COLORS="$HOME/.config/hypr/wofi/colors"

if [[ ! $(pidof wofi) ]]; then
	wofi --show drun -i --prompt 'Search...' --conf ${CONFIG} --style ${STYLE} --color ${COLORS}
else
	pkill wofi
fi
