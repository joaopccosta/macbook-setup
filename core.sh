#!/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

formulas=( terraform rcm awscli pycharm-ce intellij-idea-ce )
for formula in "${formulas[@]}"
do
    brew install $formula 
done

casks=( librewolf iterm2 visual-studio-code zoom slack )
for cask in "${casks[@]}"
do
    brew install --cask $cask 
done
