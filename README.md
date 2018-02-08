# dotfiles

This is my personal configurations

# Install VIM

Install Vundle: ```git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

Install Plugins: Launch vim and run ```:PluginInstall```

To install from command line: ```vim +PluginInstall +qall```

# Install YouCompleteMe

```
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
```
