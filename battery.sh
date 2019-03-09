#!/usr/bin/bash

battery=$(acpi -b | grep 'Battery 0' | tr  ' ' ',')
status=$(echo $battery  | cut -d',' -f 3)
percent=$(echo $battery  | cut -d',' -f 5)

echo "$status ($percent)"
