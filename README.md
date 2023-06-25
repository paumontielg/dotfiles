# My dotfiles

> OS: macOS Ventura 13.1

First, install `brew` and `git`.

Then, clone this repo into home directory (`~` or `$HOME`).

```shell
git clone https://github.com/celj/dotfiles.git ~/dotfiles
```

## Packages needed

```shell
brew bundle install --all --file=~/dotfiles/brew/pkgs
```

## Symlink files

### git

```shell
ln -s ~/dotfiles/git/.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
```

### helix

```shell
ln -s ~/dotfiles/helix/config.toml ~/.config/helix/config.toml
```

### zsh

```shell
rm ~/.zshrc
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
```
