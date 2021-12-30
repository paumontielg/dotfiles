if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/carlos/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  copybuffer
  copydir
  copyfile
  dirhistory
  git
  web-search
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias audio="alsactl restore"
alias autoupdate-website="cd ~/Downloads && git clone --recurse-submodules git@github.com:celj/my-website.git && cd my-website && git submodule update --remote --merge && git add -A && git commit -m 'Automatic Update' && git push && rm -rf ~/Downloads/my-website && cd ~"
alias clock="tty-clock -csDC 7"
alias new-course="mkdir -p course/{coursework,exams/{solved,unsolved},exercises/{solved,unsolved},homework/{solved,unsolved},labs/{solved,unsolved},notes,papers,projects}"
alias git-update="git add -A && git commit -m 'Update' && git push"
alias size="du -shc * | grep total"
alias sysupdate="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
alias tree="tree -ah"
alias vi="nvim"

find() {
    if [ $# = 1 ]
    then
        command find . -iname "*$@*"
    else
        command find "$@"
    fi
}

lazygit() {
    git status .
    git add -A
    git commit -m "$@"
    git push
}

newAnimation() {
    today=$(date +'%Y-%m-%d')
    projectGenerator -o "$today" && cd $today && code .
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/$USER/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/$USER/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/$USER/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/$USER/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/dotfiles/zsh/.p10k.zsh ]] || source ~/dotfiles/zsh/.p10k.zsh

# Golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# OpenFrameworks
export PG_OF_PATH=/home/$USER/oF
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Nodejs
export PATH=~/.npm-global/bin:$PATH

# Pip
export PATH=~/.local/bin:$PATH

