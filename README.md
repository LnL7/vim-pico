Pico Integration for Vim
========================


# Installation

This plugin uses [vundle](https://github.com/gmarik/vundle). Install vundle and then add

    Bundle 'LnL7/vim-pico'

to your *.vimrc* file. Do not forget to run `:BundleInstall` after you saved your *.vimrc*.

Updates are fetched using `:BundleUpdate`.

# Usage

Whenever a filename ends with **.pco** the pico syntax highlighter will be triggered. Alternatively, you can type

    :set filetype pico

to make the current file in the buffer a pico file.
