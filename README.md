# My dotfiles

OS: Ubuntu 21.10

Clone into home directory (`~` or `/home/$USER/`).

## Packages needed

### Add repositories

```shell
sudo add-apt-repository ppa:font-manager/staging
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu hirsute-cran40/'
sudo add-apt-repository universe
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
```

### Install packages

```shell
sudo apt-get install -y git neovim x11-utils libx11-dev libxcursor-dev libpng-dev font-manager zsh zathura gnome-boxes dirmngr gnupg apt-transport-https ca-certificates software-properties-common openssh-server r-base gdebi-core synaptic fonts-cmu software-properties-common apt-transport-https pdf2svg pulseaudio pavucontrol obs-studio code astyle signal-desktop texlive-full
```

Install RStudio and, then:

```R
install.packages("devtools")
rstudioapi::addTheme("https://raw.githubusercontent.com/dracula/rstudio/master/dracula.rstheme", apply = TRUE, force = TRUE)
```

### Fonts

#### Segoe UI

```shell
wget https://raw.githubusercontent.com/mrbvrz/segoe-ui-linux/master/install.sh
chmod +x install.sh
./install.sh
```

#### Nerd fonts

```shell
cd ~/Downloads/ && git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && cd nerd-fonts/ && ./install.sh
```

### Cursor

Go to https://www.pling.com/p/1215613/, download and extract `*.tar.gz` file. Then,

```shell
sudo mv GoogleDot-* /usr/share/icons/
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

# SSH server

```shell
sudo systemctl enable ssh
sudo systemctl start ssh
```

# Symlink files

## Neovim

```shell
mkdir /home/$USER/.config/nvim/
ln -s /home/$USER/dotfiles/nvim/init.vim /home/$USER/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Then run the following on neovim,

```neovim
:PlugInstall
:CocInstall coc-clangd coc-html coc-json coc-markdownlint coc-prettier coc-pyright coc-r-lsp coc-sh coc-go coc-tsserver
```

> This configuration is exclusive for `Python`, `R`, and [Processing](https://processing.org/).

## Wallpaper

```shell
sudo ln -s /home/$USER/dotfiles/wallpaper.jpeg /usr/share/backgrounds/wallpaper.jpeg
```

## Zathura

```shell
mkdir /home/$USER/.config/zathura/
ln -s /home/$USER/dotfiles/zathura/zathurarc /home/$USER/.config/zathura/zathurarc
```

## ZSH

Make `zsh` the default shell modifying `/etc/passwd`.

```shell
ln -s /home/$USER/dotfiles/zsh/lezama.zsh-theme /home/$USER/.oh-my-zsh/themes/lezama.zsh-theme
ln -s /home/$USER/dotfiles/zsh/.zshrc /home/$USER/.zshrc
```
