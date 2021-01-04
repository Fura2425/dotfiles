#!/bin/bash

# Creating an ide layout

if [ ! $TMUX ]; then
    echo "Cannot run without being in tmux"
else
    if [ "$#" -eq 0 ]; then
        echo -e "\n  Please enter an argument"
        echo    "  list : ros"
        echo    "         low"
        echo -en "\n"
    else
        case $1 in
            "ros")
                tmux rename-window ros
                tmux split-window -h
                tmux resize-pane -R 5
                tmux select-pane -L
                tmux split-window -v
                tmux split-window -h
                tmux select-pane -t 4
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
                export PS1="\033[1;33m\]\W \033[01;32m\]\$ \e[m\]"
                tmux select-pane -t 3
                clear
                ;;
            *) echo "Invalid argument : $1" ;;
        esac
    fi
fi
