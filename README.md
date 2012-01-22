# What is WDF?

TODO: add description

## Installation

1. `git clone git@github.com:webteam/dotfiles.git`
2. `cd dotfiles`
3. `git submodule init`
4. `git submodule update`
5. Run `bin/install.sh`
6. Launch `vim`, run `:BundleInstall`

Your dotfiles are safe! WDF will not overwrite anything.

#### Development

Add changes under 'config' directory and run `rake plugins:update` afterwards.

## Vim

### Keymaps

General keymaps can be found in 'plugin/custom/settings.vim'. Keymaps and settings for
plugins are directly located in the corresponding plugin file.

#### General

 * ,w  - faster save command
 * jj  - ESC like a boss
 * ,dd - shortcout for :close
 * M-o - open new line in insert mode
 * ,z  - toggle window zoom (ZoomWin)

#### Navigation

 * ,be - open buffer explorer
 * ,bs - split open buffer explorer
 * ,bv - vertical split open buffer explorer
 * ,lf - opens filesystem explorer
 * ,lr - opens filesystem explorer at the directory of the current file
 * ,k  - opens mini buffer explorer
 * ,lg - grep in currently open buffers
 * ,n  - toggle NERDTree
 * ,f  - find the current file in NERDTree

### Plugin List

_Note: Auto generated by `rake plugins:update`_



#### General

 * [ack.vim](https://github.com/vim-scripts/ack.vim) - Plugin for the Perl module / CLI script 'ack'
 * [vim-powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility.
 * [vim-pasta](https://github.com/sickill/vim-pasta) - Pasting in Vim with indentation adjusted to destination context
 * [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in/out  of windows (toggle between one window and multi-window)

#### Navigation

 * [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip) - Buffer Explorer / Browser
 * [LustyExplorer](https://github.com/vim-scripts/LustyExplorer) - Dynamic filesystem and buffer explorer
 * [LustyJuggler](https://github.com/vim-scripts/LustyJuggler) - Switch very quickly between your active buffers
 * [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
 * [vim-rooter](https://github.com/airblade/vim-rooter) - Changes Vim working directory to project root (identified by presence of DVCS directory).