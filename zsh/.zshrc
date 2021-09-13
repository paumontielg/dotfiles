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
alias autoupdate-website="cd ~/Downloads && git clone --recurse-submodules git@github.com:celj/my-website.git && cd my-website && git submodule update --remote --merge && git add . && git commit -m 'Automatic Update' && git push && rm -rf ~/Downloads/my-website"
