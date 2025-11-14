#!/bin/bash
# Simple CAVA-like bar output for Waybar

cava -p ~/.config/cava/config 2>/dev/null | while read -r line; do
    bars=$(echo "$line" | tr ' ' '█')
    echo "{\"text\": \"$bars\", \"class\": \"cava\"}"
done
