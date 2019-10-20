#!/bin/sh

####################################################

#FILE         : tmux_launch
#DESCRIPTION  : shell script for launching tmux in the correct config for biocswirl

#OPTIONS      : Can be configured as desired 
#REQUIREMENTS : tmux
#BUGS         : ---
#NOTES        : ---

#AUTHOR       : JL
#CONTACT      : jql6@sfu.ca
#DATE CREATED : Oct 18, 2019 
#LAST REVISION: --- 

####################################################

# Create 3 panes
tmux new-session -d 'radian'
tmux split-window -h 'nvim'
tmux split-window -v 'nvim'

tmux new-window 'biocswirl'
tmux -2 attach-session -d


# Below commands are not working

# Trying to make bash commands work in the tmux panes
session=0
window=${session}:0
pane=${window}.0
tmux send-keys -t "$pane" C-z 'set pane-border-status' Enter
tmux select-pane -t "$pane"
tmux select-window -t "$window"
tmux attach-session -t "$session"

# Reveals pane titles
#tmux set pane-border-status
echo test
# Renames currently selected pane title to 'editor'
#printf '\033]2;%s\033\\' 'editor'
