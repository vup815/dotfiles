files="zshrc ideavimrc aliases func"

homedir=~
dotfiledir=~/dotfiles

for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
