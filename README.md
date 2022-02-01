# My dotfiles

OS: macOS Monterey 12.2

Clone into home directory (`~` or `$HOME`).

## Packages needed

### Add repositories

```shell
brew tap teamookla/speedtest
brew tap homebrew/cask-fonts
```

### Install packages

```shell
brew update
brew install speedtest --force
brew install astyle cmake cmake-docs ffmpeg font-fira-code-nerd-font git gh pdf2svg tree
brew upgrade
```


Install RStudio and, then:

```R
install.packages("devtools")
rstudioapi::addTheme("https://raw.githubusercontent.com/dracula/rstudio/master/dracula.rstheme", apply = TRUE, force = TRUE)
```

### Fonts

#### Nerd fonts

```shell
brew tap homebrew/cask-fonts
brew install font-fira-code-nerd-font
```

### oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Auto-suggestions

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### Syntax highlighting

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

# Symlink files

## Neovim

```shell
mkdir $HOME/.config/nvim/
ln -s $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then run the following on neovim,

```neovim
:PlugInstall
```

### UltiSnips

```shell
ln -s $HOME/dotfiles/snippets/processing.snippets $HOME/.config/nvim/UltiSnips/processing.snippets
```

> This configuration is exclusive for [Processing](https://processing.org/).

## ZSH

```shell
rm $HOME/.zshrc
ln -s $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/zsh/lezama.zsh-theme $HOME/.oh-my-zsh/themes/lezama.zsh-theme
```
