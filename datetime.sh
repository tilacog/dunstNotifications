#!/usr/bin/bash
cmd_out=$(date -u +"%Y-%m-%d %H:%M")
date=$(echo $cmd_out | cut -d' ' -f 1)
time_=$(echo $cmd_out | cut -d' ' -f 2)
echo "$time_    $date"
