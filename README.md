# Steps

1. Install git

```shell
$ sudo apt install -y git
```

2. Install neovim

```shell
sudo apt install -y neovim
```

3. Install nerd fonts

```shell
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
```

4. Install Segoe UI font

```shell
wget https://raw.githubusercontent.com/mrbvrz/segoe-ui-linux/master/install.sh
chmod +x install.sh
./install.sh
```

4. Install `paper` icon theme

```shell
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt install -y paper-icon-theme
```

5. Install google-dot cursor

```shell
sudo apt install -y libx11-dev libxcursor-dev libpng-dev
```
Go to https://www.pling.com/p/1215613/, download and extract `*.tar.gz` file.
Then,

```shell
sudo mv GoogleDot-* /usr/share/icons/
```

6. Install font manager

```shell
sudo add-apt-repository ppa:font-manager/staging
sudo apt install -y font-manager
```
