# ~/.bash_profile

PATH=$PATH:~/.local/bin
PATH=$PATH:~/.local/scripts

# c and c++ include path
export CPATH=$CPATH:$HOME/.local/c_libraries/include
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/.local/c_libraries/lib
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/.local/lib/x86_64-linux-gnu/pkgconfig/:$HOME/.local/share/pkgconfig
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib/x86_64-linux-gnu/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib/

export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland
export XDG_CURRENT_DESKTOP=Hyprland
export LIBVA_DRIVER_NAME=nvidia
export WLR_NO_HARDWARE_CURSORS=1

export TASKRC=~/.config/task/.taskrc
export TASKDATA=~/.local/share/task/.task task list
export EDITOR="nvim"
export SUDO_EDITOR=~/.local/bin/nvim

export HISTFILESIZE=5000000

# for note taking
export NOTEROOT=~/docs/notes  

# for sessions in neovim
export SESSIONS=~/dev/sessions

[[ -f ~/.bashrc ]] && . ~/.bashrc
