# 何のためのやつか忘れたやつ
# export PATH=~/jdk-11.0.2/bin:$PATH

# zsh推奨警告を消す
export BASH_SILENCE_DEPRECATION_WARNING=1

export EDITOR="vim"
eval "$(direnv hook bash)"


# java ;xml LSP のため
export JAVA_HOME=`/usr/libexec/java_home`


# gawk gnu-sed gmp mpfr libmpc isl zlib expat
# risc-v
#export PATH="/usr/local/opt/expat/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/zlib/lib"
#export CPPFLAGS="-I/usr/local/opt/zlib/include"
#export LDFLAGS="-L/usr/local/opt/expat/lib"
#export CPPFLAGS="-I/usr/local/opt/expat/include"

# risc-v
#GNU "sed" has been installed as "gsed".
#If you need to use it as "sed", you can add a "gnubin" directory
#to your PATH from your bashrc like:
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH=$PATH:/usr/local/opt/riscv-gnu-toolchain/bin

# rust
export PATH="$HOME/.cargo/bin:$PATH"
# rust sdl
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"


# go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export GO111MODULE=on


# anyenv
export PATH=$HOME/.anyenv/bin:$PATH
eval "$(anyenv init -)"


# bat
export BAT_CONFIG_PATH="$HOME/.config/bat/config/bat.conf"


# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height 60% --reverse --border'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# .bash_profile内で.bashrcを読み込む
if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi

# 重複したPATHを消す
export PATH=$(echo "$PATH" | awk -v RS=':' '!a[$1]++ { if (NR > 1) printf RS; printf $1 }')
