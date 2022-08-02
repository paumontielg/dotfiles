export CPPFLAGS=-I/opt/homebrew/opt/ruby/include
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LDFLAGS=-L/opt/homebrew/opt/ruby/lib
export PATH=$PATH:/opt/R/arm64/gfortran/bin
export PATH=$PATH:~/Library/Python/3.8/bin
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PKG_CONFIG_PATH=/opt/homebrew/opt/ruby/lib/pkgconfig
export ZSH=~/.oh-my-zsh

ZSH_THEME="lezama"

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias autoupdate-website="cd ~/Desktop && git clone --recurse-submodules git@github.com:celj/my-website.git && cd my-website && git submodule update --remote --merge && git add -A && git commit -m 'Automatic Update' && git push && rm -rf ~/Desktop/my-website && cd ~"
alias cat="bat --theme=ansi"
alias clock="tty-clock -csDC 7"
alias config-vi="vi ~/.config/nvim/init.lua"
alias config-zsh="vi ~/.zshrc && source ~/.zshrc"
alias get-requirements="pip freeze | cut -d "=" -f1 | cut -d "@" -f1 > requirements.txt"
alias git-info="onefetch --show-logo never"
alias ls="ls -A"
alias new-app="defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock"
alias new-course="mkdir -p course/{coursework,exams/{solved,unsolved},exercises/{solved,unsolved},homework/{solved,unsolved},labs/{solved,unsolved},notes,papers,projects}"
alias size="du -shc * | grep total"
alias sysupdate="speedtest -P 8 && brew update && brew upgrade && brew cleanup && neofetch --off"
alias update-git="git add -A && git commit -m 'Update' && git push"
alias vi="nvim"

animation() {
    mkdir -p "$@" && mkdir -p "$@"/out && touch "$@"/out/.gitkeep && nvim "$@"/"$@".pde
}

find() {
    if [ $# = 1 ]
    then
        command find . -iname "*$@*" | sort
    else
        command find "$@" | sort
    fi
}

lazygit() {
    git status .
    git add -A
    git commit -m "$@"
    git push
}

search() {
    grep -binrs . -e "$@"
}

__conda_setup="$('/Users/carlos/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/carlos/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/carlos/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/carlos/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

