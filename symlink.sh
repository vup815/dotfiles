files="zshrc ideavimrc aliases vimrc func tmux.conf skhdrc yabairc"

homedir=~
dotfiledir=~/dotfiles/.dotfiles/

for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
