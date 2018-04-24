# dotfiles

This is my personal configurations

# Install VIM

Install vim-plug: ```curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```

Install Plugins: Launch vim and run ```:PlugInstall```

To install from command line: ```vim +PlugInstall +qall```

# Install YouCompleteMe

```
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/plugged/YouCompleteMe
cd ~/.vim/plugged/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
```
