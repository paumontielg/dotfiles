# My dotfiles

OS: Ubuntu 21.04

## Packages needed

### Add repositories

```shell
sudo add-apt-repository ppa:regolith-linux/release
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo add-apt-repository -u ppa:snwh/ppa
sudo add-apt-repository ppa:font-manager/staging
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu hirsute-cran40/'
sudo add-apt-repository universe
```

### Install packages

```shell
sudo apt-get install -y regolith-desktop-complete git neovim paper-icon-theme libx11-dev libxcursor-dev libpng-dev font-manager zsh typora spotify-client dirmngr gnupg apt-transport-https ca-certificates software-properties-common r-base gdebi-core synaptic
```

Install RStudio and, then:

```R
install.packages("devtools")
rstudioapi::addTheme("https://raw.githubusercontent.com/lusignan/nord-rstudio/master/Nord.rstheme", apply=TRUE, force=TRUE)
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

### powerlevel10k

```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### Auto-suggestions

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### Syntax highlighting

```shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### i3xrocks

Remove all `i3xrocks-*` packages (easier using _synaptic_), except:

* `i3xrocks-battery`
* `i3xrocks-key-indicator`
* `i3xrocks-keyboard-layout`
* `i3xrocks-media-player`
* `i3xrocks-memory`
* `i3xrocks-rotification`
* `i3xrocks-time`
* `i3xrocks-volume`

# Copy files

