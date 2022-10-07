# export CPPFLAGS=-I/opt/homebrew/opt/ruby/include
# export LDFLAGS=-L/opt/homebrew/opt/ruby/lib
# export PATH=$HOME/.cargo/bin:$PATH
# export PATH=$PATH:/opt/R/arm64/gfortran/bin
# export PATH=$PATH:~/Library/Python/3.8/bin
# export PATH=/opt/homebrew/opt/ruby/bin:$PATH
# export PKG_CONFIG_PATH=/opt/homebrew/opt/ruby/lib/pkgconfig
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=/opt/homebrew/anaconda3/bin:$PATH
export PATH=/usr/local/anaconda3/bin:$PATH
export ZSH=~/.oh-my-zsh
export NVM_DIR='$HOME/.nvm'
  [ -s '/opt/homebrew/opt/nvm/nvm.sh' ] && \. '/opt/homebrew/opt/nvm/nvm.sh'  # This loads nvm
  [ -s '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm' ] && \. '/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm'  # This loads nvm bash_completion

ZSH_THEME='lezama'

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias autoupdate-website='cd ~/Desktop && git clone --recurse-submodules git@github.com:celj/my-website.git && cd my-website && git submodule update --remote --merge && git add -A && git commit -m "Automatic Update" && git push && rm -rf ~/Desktop/my-website && cd ~'
alias cat='bat --theme=ansi'
alias config-vi='vi ~/.config/helix/config.toml'
alias config-zsh='vi ~/.zshrc && unalias -m "*" && source ~/.zshrc && neofetch'
alias git-info='onefetch --show-logo never && tokei .'
alias ls='ls -a'
alias new-app='defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock'
alias size='du -shc * | grep total'
alias sysupdate='speedtest -P 8 && brew update && brew upgrade && brew cleanup && neofetch'
alias vi='hx'

lazygit() {
    git status .
    git add -A
    git commit -m '$@'
    git push
}

search() {
    grep -binrs . -e '$@'
}

update-git() {
git rm -r --cached .
git add -A
git commit -m "Update"
git push
}
