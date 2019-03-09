#!/usr/bin/bash
battery=$(source ~/.config/dunst/scripts/battery.sh)
battery="Battery: $battery"

network=$(source ~/.config/dunst/scripts/network.sh)


datetime=$(source ~/.config/dunst/scripts/datetime.sh)


# volume=$(source ~/.config/dunst/scripts/volume.sh)
# volume=("Volume: $volume")

notify-send -u  "normal" "$datetime" "$(echo -e "$battery\n$network")"
