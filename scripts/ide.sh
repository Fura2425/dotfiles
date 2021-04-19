#!/bin/bash

# Creating an ide layout

if [ ! $TMUX ]; then
    echo "Cannot run without being in tmux."
else
    if [ "$#" -eq 0 ]; then
        echo -e "\n  Please enter an argument."
        echo    "  list : ros;"
        echo    "         low;"
        echo -en "\n"
    else
        case $1 in
            "ros")
                tmux rename-window ros
                tmux split-window -h
                tmux resize-pane -L 4
                tmux select-pane -L
                tmux split-window -v
                tmux resize-pane -U 15
                tmux select-pane -t 0
                clear
                ;;
            "low")
                tmux rename-window low
                tmux split-window -h
                tmux resize-pane -L 43
                tmux select-pane -L
                tmux split-window -v
                tmux swap-pane -U
                tmux clock
                tmux resize-pane -U 19
                tmux set-option pane-border-format "#[fg=colour0,bg=colour7](#{b:pane_current_path}) #P #(echo $SHELL)"
                export PS1="\[\033[01;36m\]\$ \[\e[0m\]"
                tmux select-pane -t 1
                tmux select-pane -t 2
                clear
                ;;
            "tile")
                tmux rename-window tile
                tmux split-window -h
                tmux split-window -v
                tmux select-pane -L
                tmux split-window -v
                clear
                ;;
            *) echo "Invalid argument : $1" ;;
        esac
    fi
fi
