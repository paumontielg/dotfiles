# My dotfiles

OS: macOS Monterey 12.2

Clone into home directory (`~` or `$HOME`).

## Packages needed

### Add repositories

```shell
brew tap homebrew/cask-fonts
brew tap teamookla/speedtest
```

### Install oh-my-zsh

```shell
sh -c '$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'
```

### Install packages and casks

```shell
brew update

brew install speedtest --force

brew install \
anaconda \
astyle \
bat \
bottom \
cheatsheet \
cmake \
cmake-docs \
discord \
docker \
dotnet \
font-fira-code-nerd-font \
gh \
git \
go \
gnupg \
grid-clock \
helix \
hugo \
iterm2 \
keycastr \
mactex \
neofetch \
node \
notion \
onefetch \
processing \
r \
rstudio \
rust \
stats \
tree \
typora
visual-studio-code \
wget \
zoom \
zsh-autosuggestions \
zsh-syntax-highlighting

brew upgrade
```

Install RStudio and, then:

```R
install.packages('devtools')
rstudioapi::addTheme('https://raw.githubusercontent.com/dracula/rstudio/master/dracula.rstheme', apply = TRUE, force = TRUE)
```

# Symlink files

## Git

```shell
ln -s ~/dotfiles/git/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
```

## Helix

```shell
ln -s ~/dotfiles/helix/config.toml ~/.config/helix/config.toml
```

## ZSH

```shell
mkdir ~/.config/zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/lezama.zsh-theme ~/.oh-my-zsh/themes/lezama.zsh-theme
```
