#!/bin/zsh
PIHOLE_IP_ADDR=$1
PI_USR=$2

cp files/.ssh/config ~/.ssh/config
sed -i config.bak "s/PIHOLE_IP_ADDR/$PIHOLE_IP_ADDR/g; s/PI_USR/$PI_USR/g" ~/.ssh/config
echo "[OK] Copied ~/.ssh/config."

defaults write -g ApplePressAndHoldEnabled -bool true
echo "[OK] Enabled long-press on keys for special characters."

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

formulas=( neovim neofetch ipcalc arp-scan vale)
for formula in "${formulas[@]}"
do
    brew install $formula 
done

casks=( telegram signal blackhole-2ch reaper discord little-snitch obsidian handbrake transmission pomotodo vlc texstudio mactex )
for cask in "${casks[@]}"
do
    brew install --cask $cask 
done
