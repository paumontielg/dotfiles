zstyle ':omz:update' mode auto

export EDITOR='code -w'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=/Applications/MATLAB_R2023a.app/bin:$PATH
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export PATH=/usr/local/anaconda3/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH
export ZSH=~/.oh-my-zsh

export NVM_DIR='$HOME/.nvm'
[ -s '/opt/homebrew/opt/nvm/nvm.sh' ] && \. '/opt/homebrew/opt/nvm/nvm.sh'                                       # This loads nvm
[ -s '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm' ] && \. '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm' # This loads nvm bash_completion

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
alias mtlb='matlab -nodesktop -nosplash'
alias new-app='defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock'
alias size='du -shc * | grep total'
alias sysupdate='brew update && brew upgrade && brew cleanup && brew bundle dump --force --file=~/dotfiles/brew/pkgs && unalias -m "*" && source ~/.zshrc'
alias vi='hx'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
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
# <<< conda initialize <<<

fpath+="$(brew --prefix)/share/zsh/site-functions"
autoload -U promptinit; promptinit
prompt pure
