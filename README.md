# My dotfiles

OS: macOS Monterey 12.2

Clone into home directory (`~` or `$HOME`).

## Packages needed

### Add repositories

```shell
brew tap cjbassi/ytop
brew tap homebrew/cask-fonts
brew tap teamookla/speedtest
```

### Install packages

```shell
brew update
brew install speedtest --force
brew install astyle bat cmake cmake-docs coreutils ffmpeg font-fira-code-nerd-font git gh gnu-sed insect neofetch onefetch osx-cpu-temp pdf2svg tree tty-clock zsh-autosuggestions zsh-syntax-highlighting
brew upgrade
```


Install RStudio and, then:

```R
install.packages("devtools")
rstudioapi::addTheme("https://raw.githubusercontent.com/dracula/rstudio/master/dracula.rstheme", apply = TRUE, force = TRUE)
```

# Symlink files

## Git

```shell
ln -s ~/dotfiles/git/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
```

## Neovim

```shell
mkdir ~/.config/nvim/
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-~/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then run the following on neovim,

```neovim
:PlugInstall
```

### UltiSnips

```shell
ln -s ~/dotfiles/snippets/processing.snippets ~/.config/nvim/UltiSnips/processing.snippets
```

> This configuration is exclusive for [Processing](https://processing.org/).

## ZSH

```shell
mkdir ~/.config/zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/lezama.zsh-theme ~/.config/zsh/lezama.zsh-theme
```
