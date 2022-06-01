#!/bin/zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

formulas=( terraform rcm awscli pycharm-ce intellij-idea-ce jq )
for formula in "${formulas[@]}"
do
    brew install $formula 
done

casks=( librewolf iterm2 visual-studio-code zoom slack spectacle disk-inventory-x )
for cask in "${casks[@]}"
do
    brew install --cask $cask 
done
