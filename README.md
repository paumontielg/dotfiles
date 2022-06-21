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

### Install packages and casks

```shell
brew update

brew install speedtest --force

brew install \
anaconda \
android-studio \
astyle \
bat \
cask \
cheatsheet \
cmake \
cmake-docs \
coreutils \
docker \
fd \
ffmpeg \
flutter \
font-fira-code-nerd-font \
gh \
ghostscript \
git \
gnu-sed \
go \
google-chrome \
hazeover \
hugo \
imagemagick \
insect \
iterm2 \
keycastr \
microsoft-excel \
microsoft-powerpoint \
microsoft-teams \
microsoft-word \
miktex-console \
neofetch \
node \
numi \
onefetch \
osx-cpu-temp \
pdf2svg \
pipes-sh \
processing \
r \
rstudio \
ruby \
slack \
spotify \
stats \
steam \
tree \
tty-clock \
typora \
visual-studio-code \
vlc \
wget \
whatsapp \
windows95 \
zoom \
zsh-autosuggestions \
zsh-syntax-highlighting

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
nvim +PackerSync

```

## ZSH

```shell
mkdir ~/.config/zsh
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/lezama.zsh-theme ~/.config/zsh/lezama.zsh-theme
```
