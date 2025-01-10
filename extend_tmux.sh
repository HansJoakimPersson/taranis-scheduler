#!/bin/bash

set -eu

cd $(git rev-parse --show-toplevel)

# Create tailwind tab
tmux new-window -t taranis -n tailwind 
tmux send-keys -t taranis:tailwind "./tailwindcss -i scheduler/static/css/input.css -o scheduler/static/css/tailwind.css --watch" C-m

# Create scheduler tab
tmux new-window -t taranis -n scheduler 
tmux send-keys -t taranis:scheduler "./install_and_run_dev.sh" C-m