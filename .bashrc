#export PS1="╭─\u@\h:\W \n╰─|ω･)ﾁﾗ ≺"
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    source /usr/local/etc/bash_completion.d/git-prompt.sh
    export PS1='\e[01;37m\]╭─\[\e[01;32m\]\u@\h\[\e[01;33m\] \w$(__git_ps1) \n\[\e[01;37m\]╰─|ω･)ﾁﾗ ≺\[\e[0m\] '
    export PS2="         \[\e[01;37m\]≺ \[\e[0m\]"
else
    export PS1='\e[01;37m\]╭─\[\e[01;32m\]\u@\h\[\e[01;33m\] \w \n\[\e[01;37m\]╰─|ω･)ﾁﾗ ≺\[\e[0m\] '
    export PS2="         \[\e[01;37m\]≺ \[\e[0m\]"
fi

psdef(){
    if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
        source /usr/local/etc/bash_completion.d/git-prompt.sh
        export PS1='\e[01;37m\]╭─\[\e[01;32m\]\u@\h\[\e[01;33m\] \w$(__git_ps1) \n\[\e[01;37m\]╰─|ω･)ﾁﾗ ≺\[\e[0m\] '
        export PS2="         \[\e[01;37m\]≺ \[\e[0m\]"
    else
        export PS1='\e[01;37m\]╭─\[\e[01;32m\]\u@\h\[\e[01;33m\] \w \n\[\e[01;37m\]╰─|ω･)ﾁﾗ ≺\[\e[0m\] '
        export PS2="         \[\e[01;37m\]≺ \[\e[0m\]"
    fi
}
psdol(){
    export PS1="\[\e[01;36m\]\$ \[\e[0m\]"
}

# FB c6c8d1
# BG 161821

# shell設定
# set -o vi # shellキーバインドをvi風に設定
# bind '"jj": vi-movement-mode' # Escを jj にキーバインド


# function
ls_notice(){
    if [ -z "$(\ls -A $PWD)" ]; then
            echo "The directory is empty."
        else
            if [ -n $(which exa) ]; then
                \exa --icons $1
            else
                \ls -FG $1
            fi
        fi
}
cdls(){
    \cd "$@" && printf '\n\e[1;37m%s\e[m\n' ' ls' && ls_notice
}

# alias
alias ls='ls_notice'
alias ll='ls -l'
alias la='ls -Al'

alias cd='cdls'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dot='cd ~/dotfiles'
alias wp='cd ~/workspace/programming'
alias wpr='cd ~/workspace/programming/rust'
alias wpc='cd ~/workspace/programming/c'
alias wpa='cd ~/workspace/programming/assembly'
alias wpb='cd ~/workspace/programming/binary'
alias wpj='cd ~/workspace/projects'

alias n='nvim'
alias j='zls'
alias lg='lazygit'
alias cat='bat'

# brew
alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew'

# tmux
alias t='tmux -u'
alias ta='tmux a'
alias tl='tmux ls'

# ide
alias ide='~/dotfiles/scripts/ide'

# silicon
alias silicon='silicon --shadow-blur-radius 15 --background "#5550" --font "Ricty"'

# Ghidra
alias ghidra='open /Applications/ghidra_9.1.1_PUBLIC/ghidraRun'

# C/C++
alias gcc='gcc-11'
alias g++='g++-11'

# GDB
alias gdb='sudo /usr/local/bin/gdb'

# docker
alias ownC='docker run --rm -v $HOME/workspace/projects/c-compiler-tutorial/:/c-compiler-tutorial -w /c-compiler-tutorial compilerbook'

function llvm (){
    export PATH="/usr/local/opt/llvm/bin:$PATH"
    export LDFLAGS="-L/usr/local/opt/llvm/lib"
    export CPPFLAGS="-I/usr/local/opt/llvm/include"
    unset -f llvm
}

# trash
if type trash > /dev/null 2>&1; then
    alias rm='trash'
fi

# z command
source ~/z/z.sh
zls(){
    z "$@" && printf '\n\e[1;37m%s\e[0m\n' ' ls' && ls_notice
}

# hub
#eval "$(hub alias -s)"

# done (original)
#/usr/bin/osascript -e 'display notification "hogehoge" with title "iTerm" subtitle "done." sound name "Submarine"'


# wakatime
source ~/bash-wakatime/bash-wakatime.sh
