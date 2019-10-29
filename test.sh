#!/bin/sh
####################################################
#FILE         : tmux_launch
#DESCRIPTION  : shell script for launching tmux in the correct config for biocswirl
#OPTIONS      : Can be configured as desired
#REQUIREMENTS : tmux
#BUGS         : ---
#NOTES        : ---
#AUTHOR       : LNC
#CONTACT      : lisanatashacao@gmail.com
#DATE CREATED : Oct 18, 2019
#LAST REVISION: ---
####################################################
tmux new-session
# Set up text above panes
set pane-border-status top
# Rename current panel to 'Biocswirl lesson 1'
printf '\033]2;%s\033\\' 'Biocswirl lesson 1'
# # Open radian
# radian
# # Create a thin, split pane for progress bar
# tmux split-window -v
# tmux resize-pane -D 10
# # Select the above pane
# tmux select-pane -U
# # Create a split window for another radian
# tmux split-window -h
# printf '\033]2;%s\033\\' 'editor';
# # Open radian in the right window
# radian
# # Rename the window to biocswirl
# tmux rename-window biocswirl
# # Not very sure what this does
# tmux -2 attach-session -d
# # Enable mouse mode (tmux 2.1 and above)
# tmux set -g mouse on
