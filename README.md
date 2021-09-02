# Steps

1. Install git

```sh
sudo apt install -y git
```

2. Install neovim

```sh
sudo apt install -y neovim
```

3. Install nerd fonts

```sh
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
```

4. Install Segoe UI font

```sh
wget https://raw.githubusercontent.com/mrbvrz/segoe-ui-linux/master/install.sh
chmod +x install.sh
./install.sh
```

4. Install `paper` icon theme

```sh
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt install -y paper-icon-theme
```

5. Install google-dot cursor

```sh
sudo apt install -y libx11-dev libxcursor-dev libpng-dev
```
Go to https://www.pling.com/p/1215613/, download and extract `*.tar.gz` file.
Then,

```sh
sudo mv GoogleDot-* /usr/share/icons/
```

6. Install font manager

```sh
sudo add-apt-repository ppa:font-manager/staging
sudo apt install -y font-manager
```
