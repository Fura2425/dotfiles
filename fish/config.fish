starship init fish | source

# anyenv
set -x PATH $HOME/.anyenv/bin $PATH
eval (anyenv init - | source)

# done
set -U __done_min_cmd_duration 5000  # default: 5000 ms
set -U __done_notify_sound 1
#set -U __done_exclude 'git (?!push|pull)'  # default: all git commands, except push and pull. accepts a regex.


# hub
#eval (hub alias -s)


##########################################
# wakatime for fish
#
# Add this to the fish_prompt function in
# ~/.config/fish/functions/fish_prompt.fish
# (or if it doesn't exist, create it).


# We've also included an example of how
# to determine the current project from the pwd.
# It'll only work without alterations if
# you happen to keep all your projects in
# ~/Sites/ on a Mac, but it's easy to modify

set -l project

if echo (pwd) | grep -qEi "^/Users/$USER/Sites/"
    set  project (echo (pwd) | sed "s#^/Users/$USER/Sites/\\([^/]*\\).*#\\1#")
else
    set  project "Terminal"
end

wakatime --write --plugin "fish-wakatime/0.0.1" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&
#############################################
