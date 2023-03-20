# export PATH=$HOME/.cargo/bin:$PATH
# export PATH=/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH
# export PATH=/opt/homebrew/opt/ruby@3.1/bin:$PATH
# export PKG_CONFIG_PATH=/opt/homebrew/opt/ruby/lib/pkgconfig

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export PATH=/usr/local/anaconda3/bin:$PATH
export ZSH=~/.oh-my-zsh
export NVM_DIR='$HOME/.nvm'
[ -s '/opt/homebrew/opt/nvm/nvm.sh' ] && \. '/opt/homebrew/opt/nvm/nvm.sh'                                       # This loads nvm
[ -s '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm' ] && \. '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm' # This loads nvm bash_completion

ZSH_THEME='lezama'

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias cat='bat --theme=ansi'
alias config-vi='vi ~/.config/helix/config.toml'
alias config-zsh='vi ~/.zshrc && unalias -m "*" && source ~/.zshrc'
alias git-info='tokei . & onefetch --show-logo never'
alias new-app='defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock' # MacOS only
alias rstudio='open -a rstudio'                                                         # MacOS only
alias size='du -shc * | grep total'
alias sysupdate='brew update && brew upgrade && brew cleanup && brew bundle dump --force --file=~/dotfiles/brew/pkgs && neofetch'
alias vi='hx'
alias work-time='cd ~/Library/CloudStorage/GoogleDrive-carlos.lezama@rappi.com/My\ Drive'

lazygit() {
    git status .
    git rm -r --cached .
    git add -A
    git commit -m "$@"
    git push
}

update-git() {
    git status .
    git rm -r --cached .
    git add -A
    git commit -m 'Update'
    git push
}

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
