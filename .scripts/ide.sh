#!/bin/bash

# Creating an ide layout

if [ "$#" -eq 0 ]; then
    #echo -e "\n  Please enter an argument"
    #echo    "  list : ros"
    #echo -en "\n"
    tmux new-session        \; \
         split-window -h    \; \
         resize-pane -L 50  \; \
         select-pane -L     \; \
         select-pane -t 1
else
    case $1 in
        "ros")
            tmux new-session -s ros \; \
                 split-window -h    \; \
                 select-pane -L     \; \
                 resize-pane -R 5   \; \
                 split-window -v    \; \
                 split-window -h    \; \
                 select-pane -t 0
            ;;
        *) echo "Invalid argument" ;;
    esac
fi
