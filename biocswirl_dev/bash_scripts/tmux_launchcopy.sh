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

tmux new-session -d 'vim'
tmux split-window -h 'radian'
#tmux split-window -h
#tmux new-window 'mutt'
tmux -2 attach-session -d

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on