This is Ilkka Tengvall's personal vim config store.

Feel free to use as a reference.

Additional Packages
===================

Some of the settings require external tools. Here's list of packages to install on Fedora:

`sudo yum install vim-enhanced vim-command-t syntastic ack`


Start using this setup
======================

```
git clone --recurse-submodules git@github.com:ikke-t/vim.git ~/.vim
ln -s ~/.git/vimrc ~/.vimrc
```

The Plugins
===========

- **pathogen**:        to manage autoloading of plugins
- **vim-puppet**:      brings the puppet syntax into vim
- **tabular**:         help reformat code into blocks like this here
- **syntastic**:       do syntax check on file after saving it (write)
- **lusty explorer**:  do funky magic finding files and grepping stuff from them
- **command-t**:       find files by listing letters of their names
- **ack.vim**:         grep like search addition
- **nerdcommenter**:   easily comment/uncomment stuff
- **vim-fugitive**:    git helper for vim

For more information about the plugins, see submodules of the bundle dir.
They all have their own readme files.


Examples
========

- **Align** the above colon block:       `:'<,'>Tabularize /:  \zs`
- **Search files** under current dir:    `\t <type letters>`
- **grep variables** from open buffers:  `\lb <pattern>`
- Weird ending of the **file open**:     `\lf <pattern>`
- Open different **buffer**:             `\b`
- **Search** for stuff:                  `Ack foobar ~/src/project`
- **Comment / uncomment** block:         `\cl` / `\cu`
- **Git commit**:                        `:Gcommit`

