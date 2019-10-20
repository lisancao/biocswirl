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
tmux new-session -d
tmux split-window -v

tmux resize-pane -D 10
tmux select-pane -U
tmux split-window -h 'radian'

tmux new-window 'biocswirl'
tmux -2 attach-session -d

# Trying to make bash commands work in the tmux panes
session=0
window=${session}:0
pane=${window}.2
tmux send-keys -t "$pane" C-z 'tmux set pane-border-status' Enter
echo 1
tmux select-pane -t "$pane"
echo 2
tmux select-window -t "$window"
echo 3
tmux attach-session -t "$session"
echo 4

# Reveals pane titles
tmux set pane-border-status
echo test
# Renames currently selected pane title to 'editor'
printf '\033]2;%s\033\\' 'editor'
