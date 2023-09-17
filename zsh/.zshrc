zstyle ':omz:update' mode auto

fpath+=("$(brew --prefix)/share/zsh/site-functions")

autoload -U promptinit
promptinit
prompt pure

export BREW_FILE=~/dotfiles/brew/pkgs
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export MACHINE=mac-n-cheese
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export PATH=/opt/homebrew/opt/postgresql@15/bin:$PATH
export PATH=/usr/local/anaconda3/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH
export ZSH=~/.oh-my-zsh

export NVM_DIR='$HOME/.nvm'
[ -s '/opt/homebrew/opt/nvm/nvm.sh' ] && \. '/opt/homebrew/opt/nvm/nvm.sh'
[ -s '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm' ] && \. '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm'

plugins=(
    aliases
    git
    macos
    python
    qrcode
    vscode
)

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cat='bat --theme=ansi'
alias config-zsh='vi ~/.zshrc && unalias -m "*" && source ~/.zshrc'
alias ls='exa'
alias new-app='defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock'
alias size='du -shc * | grep total'
alias tree='exa --tree'
alias vi='nvim'

function csw() {
    conda deactivate &&
    conda activate "$1"
}

function fcd() {
  local dir
  dir=$(find ${1:-.} -type d -not -path '*/\.*' 2> /dev/null | fzf +m) && cd "$dir"
}

function nd() {
    mkdir -p -- "$1" &&
        cd -P -- "$1"
}

function py-dev() {
    export AWS_PROFILE=development;
    export EXECUTION_ENVIRONMENT=development;
    python $1
}

function py-prod() {
    export AWS_PROFILE=production;
    export EXECUTION_ENVIRONMENT=production;
    python $1
}

function sysupdate() {
    if [[ $(scutil --get LocalHostName) == $MACHINE ]]; then
        echo "Updating brew packages..."
        brew update
        echo "Upgrading brew packages..."
        brew upgrade
        echo "Updating brew dump file..."
        brew bundle dump --force --file=$BREW_FILE
        echo "Cleaning up brew packages..."
        brew bundle cleanup --force --file=$BREW_FILE
        echo "Removing previous aliases..."
        unalias -m "*"
        echo "Reloading zsh..."
        source ~/.zshrc
        echo "Reloading launchpad ..."
        new-app
        echo "System updated!"
    else
        echo "Updating brew packages..."
        brew update
        echo "Upgrading brew packages..."
        brew upgrade
        echo "Cleaning up brew packages..."
        brew bundle cleanup --force --file=$BREW_FILE
        echo "Removing previous aliases..."
        unalias -m "*"
        echo "Reloading zsh..."
        source ~/.zshrc
        echo "Reloading launchpad ..."
        new-app
        echo "System updated!"
    fi
}

function syncsys() {
    if [[ $(scutil --get LocalHostName) == $MACHINE ]]; then
        echo "Updating system..."
        sysupdate
        echo "Pushing changes to github..."
        cd ~/dotfiles
        git add .
        if [ "$1" != "" ]; then
            git commit -m "$1"
        else
            git commit -m update
        fi
        git push
    else
        if [ "$1" != "" ]; then
            echo "You are not on the main machine."
        fi
        echo "Pulling changes from github..."
        cd ~/dotfiles
        git pull --rebase
        echo "Updating system..."
        sysupdate
    fi
}

__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
