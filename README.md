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
brew install astyle bat cask cmake cmake-docs coreutils fd ffmpeg font-fira-code-nerd-font git gh go gnu-sed insect neofetch node onefetch osx-cpu-temp pipes-sh pdf2svg ruby tree tty-clock wget zsh-autosuggestions zsh-syntax-highlighting
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
ln -s ~/dotfiles/nvim ~/.config
sh -c 'curl -fLo "${XDG_DATA_HOME:-~/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then run the following on neovim,

```neovim
:PlugInstall
:checkhealth
```

## ZSH

```shell
mkdir ~/.config/zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/lezama.zsh-theme ~/.config/zsh/lezama.zsh-theme
```
