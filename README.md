This is Ilkka Tengvall's personal vim config store.

Feel free to use as a reference.

Additional Packages
===================

Some of the settings require external tools. Here's list of packages to install on Fedora:

`sudo yum install vim-enhanced vim-command-t syntastic`


Start using this setup
======================

`git clone git@github.com:ikke-t/vim.git ~/.vim
ln -s ~/.git/vimrc ~/.vimrc`

The Plugins
===========

- pathogen:        to manage autoloading of plugins
- vim-puppet:      brings the puppet syntax into vim
- tabular:         help reformat code into blocks like this here
- syntastic:       do syntax check on file after saving it (write)
- lusty explorer:  do funky magic finding files and grepping stuff from them
- command-t:       find files by listing letters of their names


Examples
========

- Align the above colon block:       ":'<,'>Tabularize /:  \zs"
- Search files under current dir:    "ctrl-t <type letters>"
- grep variables from open buffers:  "ctrl-lb <pattern>"
- weird ending of the file open:     "ctrl-lf <pattern>"
- open different buffer:             "ctrl-b"

