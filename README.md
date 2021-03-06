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
ln -s ~/.vim/vimrc ~/.vimrc
```

For Command-t, if you don't find it from your packet repos (e.g. RHEL8),
you need to:

```
cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
sudo dnf install -y ruby-devel
ruby extconf.rb
make
```

Updating the git repo
=====================

```
git submodule update --recursive --remote
```

For some reason the git submodule sometimes bring old versions. So
after cloning this repo, get the latest versions of plugins:

```
git submodule foreach git pull origin master
```

To add new submodule
====================

```
git submodule add https://github.com/davidhalter/jedi-vim.git bundle/jedi-vim
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
- **jedi-vim**:        python autocomplete
- **fzf**              fzf fuzzy search plugin

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
- **Fuzzy open new file with preview**:  `:Files`
- **Fuzzy search line in buffer**:       `:LBuffer`
