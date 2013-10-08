# vim-pico

This project contains some Vim configuration files to work with
[Pico](http://pico.vub.ac.be/).

So far it includes:

- Syntax highlighting
- Filetype detection
- Auto indentation

## Installing

If you are using the [Vundle plugin](https://github.com/gmarik/vundle)
Add this line to your ~/.vimrc configuration file:

```
Bundle 'LnL7/vim-pico'
```

And then run vim with: `vim +BundleInstall`

Alternatively if you are running under OS X, you might want to read these instructions to
properly install it.

If you are using the
[Pathogen plugin](https://github.com/tpope/vim-pathogen),
just clone this repository in your `~/.vim/bundle` folder like so:

```
$ cd ~/.vim/bundle
$ git clone https://github.com/LnL7/vim-pico.git
```

## Usage

Whenever a filename ends with **.pco** the pico syntax highlighter will be triggered.
Alternatively, you can use `:setf pico` to make the current file in the buffer a pico file.
