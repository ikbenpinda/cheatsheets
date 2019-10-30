Tested on Ubuntu 18.04 and Mac OS X Mojave.

### powerline-patched fonts

```sh

# In my case, neither
# sudo dnf install powerline-fonts
# or
# sudo apt-get install fonts-powerline
# could be used, so I resorted to this:

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

```

### tmux

```sh

# ~/.tmux.conf

# Re-enables the colors in the prompt.
set -g default-terminal "screen-256color"

# Re-enables normal-people scroll.
set -g mouse on

# Enables powerline for tmux.
source ~/.local/lib/python2.7/site-packages/powerline/bindings/tmux/powerline.conf

```

### vim

```sh

# ~/.vimrc

# Check the python support:
vim --version | grep +python

# Adds powerline to vim.
# In this case python 3 was used, otherwise use 'python'.
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

# Always show it.
set laststatus=2

# Terminal colors support.
set t_Co=256
```

### bash

```sh

# ~/.bashrc

# Add the powerline plugin to the terminal.
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi


```

### zsh


