#!/bin/zsh
NODE_VERSION="14.19.2"
NPM_TOKEN=$1

formulas=( nvm git-flow )
for formula in "${formulas[@]}"
do
    brew install $formula 
done

mkdir ~/.nvm
echo "[OK] Created ~/.nvm."

cat nvmexports >> ~/.exports
source ~/.exports
echo "[OK] Appended nvm export statement."
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION

casks=( ngrok )
for cask in "${casks[@]}"
do
    brew install --cask $cask 
done

cp ./npmrc ~/.npmrc
sed -i .npmrc.bak "s/NPMTOKEN/$NPM_TOKEN/g" ~/.npmrc
echo "[OK] Configured npmrc"

npm install -g cfn-lint
echo "[OK] Installed npm packages."
