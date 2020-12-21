# 何のためのやつか忘れたやつ
# export PATH=~/jdk-11.0.2/bin:$PATH

export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH'

alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew'

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
#export GOPATH=$HOME/golang/go
#export PATH=$GOPATH/bin:$PATH
#export GO111MODULE=on


# python
#export PATH=/Library/Frameworks/Python.framework/Versions/3.9/bin:$PATH


# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nameko1025/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nameko1025/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nameko1025/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nameko1025/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



# .bash_profile内で.bashrcを読み込む
if [ -f ~/.bashrc ] ; then
    . ~/.bashrc
fi
