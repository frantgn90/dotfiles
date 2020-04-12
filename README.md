# Dotfiles

This is a placeholder where I save all the configuration files I consider I would need in order to have a fancy and conformatble environment.

## Vim

I want vim as the main text editor, you can look to it [here](http://www.vim.org). I have some of plugins installed and for that I am using Vundle. The fist step you should do is to install it:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
After that there is only about copy the file `.vimrc` to your `$HOME` and run the command `vim +PluginInstall`. Take into account that some of the plugins are using external libraries like `exuberant-ctags` or `flake8` so this is not rare to get some error messages the first time you run vim with this configuration. I should have a complete dependencies list but I have not, let's see in the future...

**Important** If you want to have fancy airline at the bottom, consider to install the powerline fonts. `https://github.com/powerline/fonts` (it is also needed if you want to have beautiful status bar with bumblebee as you will see at the bottom).

## i3 window manager

I find out tiling window manager much more practical than common window managers. My reason was that I was always having a bunch of windows openned and is just a mess try to get  just the windows you want without traversing all the rest. By tiling window I have more ordenated desktops. I am using i3-wm. If you want to take a look, this is the [Website](https://i3wm.org/). To get my configuration you only have to copy the folder `.config/i3` in your `$HOME`.

Right now I remember about two dependencies.
- `compton` in order to enable transparencies. It makes the graphics way nicers :)
- bumblebee-status. Is the piece of software I am using for the status bar. You have the repository here: `https://github.com/tobi-wan-kenobi/bumblebee-status`. Remember to change the value of the `status_command` field in the configuration with the path for you instalation of bumblebee.
