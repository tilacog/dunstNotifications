#!/usr/bin/bash
ETH_DEVICE='enp6s0'
WIFI_DEVICE='wlp7s0'
cmd_out=$(nmcli device)

eth=$(echo "$cmd_out"  | grep "$ETH_DEVICE")
eth_type=$(echo "$eth" | awk '{print $2}')
eth_state=$(echo "$eth" | awk '{print $3}')
eth_connection=$(echo "$eth" | tr -s ' '| cut -d ' ' -f4-)

wifi=$(echo "$cmd_out" | grep "$WIFI_DEVICE")
wifi_type=$(echo "$wifi" | awk '{print $2}')
wifi_state=$(echo "$wifi" | awk '{print $3}')
wifi_connection=$(echo "$wifi" | tr -s ' '| cut -d ' ' -f4-)

echo "$eth_type [$eth_state]: $eth_connection"
echo "$wifi_type [$wifi_state]: $wifi_connection"
