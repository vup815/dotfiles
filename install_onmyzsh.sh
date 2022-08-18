ZSH_CUSTOM=~/.oh-my-zsh/custom

REPO=https://github.com/vup815

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone $REPO/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
git clone $REPO/zsh-you-should-use.git $ZSH_CUSTOM/plugins/zsh-you-should-use
git clone $REPO/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone $REPO/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
