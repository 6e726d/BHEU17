#!/bin/sh

if [ $# != 1 ]; then
    echo "Usage:"
    echo "    $0 <network interfaca>"
    exit 1
fi

IFACE_NAME=$1

# We need root to do this.
[ "$(whoami)" != "root" ] && exec sudo -- "$0" "$@"

# Stop network-manager
service network-manager stop

# Set network interface
ifconfig $IFACE_NAME down
iwconfig $IFACE_NAME mode managed
ifconfig $IFACE_NAME up

tmux new-session -d -s P2P-HELPER

tmux split-window -v 

tmux select-pane -t 0

tmux split-window -v

tmux select-pane -t 0

tmux send-keys "./wpa_supplicant -Dnl80211 -i $IFACE_NAME -c p2p.conf" C-m

tmux select-pane -t 1

tmux send-keys "./wpa_cli -i $IFACE_NAME" C-m

tmux attach
