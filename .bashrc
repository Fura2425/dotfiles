#export PS1="╭─\u@\h:\W \n╰─|ω･)ﾁﾗ ≺"
    if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
        source /usr/local/etc/bash_completion.d/git-completion.bash
    fi
    if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
        source /usr/local/etc/bash_completion.d/git-prompt.sh
        export PS1='\033[01;39m\]╭─\[\033[01;32m\]\u@\h\[\033[01;33m\] \w$(__git_ps1) \n\[\033[01;39m\]╰─|ω･)ﾁﾗ ≺\[\033[00m\] '
    else
        export PS1='\033[01;39m\]╭─\[\033[01;32m\]\u@\h\[\033[01;33m\] \w \n\[\033[01;39m\]╰─|ω･)ﾁﾗ ≺\[\033[00m\] '
    fi


# FB c6c8d1
# BG 161821

# shell設定
# set -o vi # shellキーバインドをvi風に設定
# bind '"jj": vi-movement-mode' # Escを jj にキーバインド


# エイリアス
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -alFG'

alias dot='cd ~/dotfiles'

alias wp='cd ~/workspace/programming'
alias wpr='cd ~/workspace/programming/rust'
alias wpc='cd ~/workspace/programming/c'
alias wpa='cd ~/workspace/programming/assembly'
alias wpb='cd ~/workspace/programming/binary'

alias wpj='cd ~/workspace/projects'

alias n='nvim'
alias ide='source ~/dotfiles/scripts/ide.sh'
alias j='z'
alias lg='lazygit'
alias cat='bat'

# tmux
alias t='tmux -u'
alias ta='tmux a'
alias tl='tmux ls'

alias silicon='silicon --shadow-blur-radius 15 --background "#5550" --font "Ricty"'

# Ghidra
alias ghidra='open /Applications/ghidra_9.1.1_PUBLIC/ghidraRun'

# docker
alias ownC='docker run --rm -v $HOME/workspace/projects/c-compiler-tutorial/:/c-compiler-tutorial -w /c-compiler-tutorial compilerbook'

function llvm (){
    export PATH="/usr/local/opt/llvm/bin:$PATH"
    export LDFLAGS="-L/usr/local/opt/llvm/lib"
    export CPPFLAGS="-I/usr/local/opt/llvm/include"
    unset -f llvm
}

# trash
if type trash-put &> /dev/null
then
    alias rm=trash-put
fi

# hub
#eval "$(hub alias -s)"

# zコマンド
source ~/z/z.sh

# bat
export BAT_CONFIG_PATH="$HOME/.config/bat/config/bat.conf"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height 60% --reverse --border'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


# wakatime
source ~/bash-wakatime/bash-wakatime.sh
