#!/bin/sh

# WSL2の初期設定スクリプト

# windowsのDownloadsフォルダにシンボリックリンクを張る
ln -s /mnt/c/Users/$(powershell.exe "Write-Host \$env:username")/Downloads ./win_downloads

# apt関係
sudo apt update
sudo apt install build-essential gdb git netdiscover nmap python3 tree unar zsh curl vim wget -y
sudo apt upgrade -y

# zsh関係: vimrcどうするかも検討したい
wget https://raw.githubusercontent.com/kalaxity/init/main/.zshrc
sudo chsh -s $(which zsh) $(whoami)
