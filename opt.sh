#!/bin/zsh
PIHOLE_IP_ADDR=$1
PI_USR=$2

cp files/.ssh/config ~/.ssh/config
sed -i config.bak "s/PIHOLE_IP_ADDR/$PIHOLE_IP_ADDR/g; s/PI_USR/$PI_USR/g" ~/.ssh/config

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

casks=( telegram signal blackhole-2ch reaper spectacle discord little-snitch obsidian disk-inventory-x handbrake transmission )
for cask in "${casks[@]}"
do
    brew install --cask $cask 
done
