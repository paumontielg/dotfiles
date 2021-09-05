# My dotfiles

OS: Ubuntu 21.04

Clone into home directory (`~` or `/home/$USER/`).

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
sudo apt-get install -y regolith-desktop-complete git neovim paper-icon-theme libx11-dev libxcursor-dev libpng-dev font-manager zsh typora spotify-client dirmngr gnupg apt-transport-https ca-certificates software-properties-common r-base gdebi-core synaptic fonts-cmu texlive-full
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

# Symlink files

## Neovim

## Regolith

```shell
sudo rm -rf /etc/regolith/i3/config /etc/regolith/i3xrocks/conf.d/* /etc/regolith/picom/config /etc/regolith/styles/i3xrocks /etc/regolith/styles/nord/theme /etc/regolith/styles/nord/typeface
sudo ln -s /home/$USER/dotfiles/regolith/i3/config /etc/regolith/i3/config
sudo ln -s /home/$USER/dotfiles/regolith/i3xrocks/* /etc/regolith/i3xrocks/conf.d/
sudo ln -s /home/$USER/dotfiles/regolith/picom/config /etc/regolith/picom/config
sudo ln -s /home/$USER/dotfiles/regolith/styles/i3xrocks /etc/regolith/styles/i3xrocks
sudo ln -s /home/$USER/dotfiles/regolith/styles/nord/theme /etc/regolith/styles/nord/theme
sudo ln -s /home/$USER/dotfiles/regolith/styles/nord/typeface /etc/regolith/styles/nord/typeface
```

```bash
/etc/regolith/
├── i3
│   └── config -> /home/$USER/dotfiles/regolith/i3/config
├── i3xrocks
│   └── conf.d
│       ├── 01_setup -> /home/$USER/dotfiles/regolith/i3xrocks/01_setup
│       ├── 20_media-player -> /home/$USER/dotfiles/regolith/i3xrocks/20_media-player
│       ├── 30_keyboard-layout -> /home/$USER/dotfiles/regolith/i3xrocks/30_keyboard-layout
│       ├── 30_key-indicator -> /home/$USER/dotfiles/regolith/i3xrocks/30_key-indicator
│       ├── 40_rofication -> /home/$USER/dotfiles/regolith/i3xrocks/40_rofication
│       ├── 50_memory -> /home/$USER/dotfiles/regolith/i3xrocks/50_memory
│       ├── 60_volume -> /home/$USER/dotfiles/regolith/i3xrocks/60_volume
│       ├── 70_wifi -> /home/$USER/dotfiles/regolith/i3xrocks/70_wifi
│       ├── 80_time -> /home/$USER/dotfiles/regolith/i3xrocks/80_time
│       └── 90_battery -> /home/$USER/dotfiles/regolith/i3xrocks/90_battery
├── picom
│   └── config -> /home/$USER/dotfiles/regolith/picom/config
├── styles
│   ├── gnome
│   ├── i3-wm
│   ├── i3xrocks -> /home/$USER/dotfiles/regolith/styles/i3xrocks
│   ├── nord
│   │   ├── color
│   │   ├── rofi.rasi
│   │   ├── root
│   │   ├── theme -> /home/$USER/dotfiles/regolith/styles/nord/theme
│   │   └── typeface -> /home/$USER/dotfiles/regolith/styles/nord/typeface
│   ├── rofi
│   ├── root
│   └── st-term
└── version
```

## Wallpaper

```shell
sudo ln -s /home/$USER/dotfiles/wallpaper/leaves.jpg /usr/share/backgrounds/leaves.jpg
```

## Zathura

## zsh

Make `zsh` the default shell modifying `/etc/passwd`.

```shell
ln -s /home/$USER/dotfiles/zsh/.p10k.zsh /home/$USER/.p10k.zsh
ln -s /home/$USER/dotfiles/zsh/.zshrc /home/$USER/.zshrc
```
