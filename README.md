Installation
============
`git clone <repo>`, then `ln -s dotvim .vim`.
the `vimrc` file is loaded when Vim starts.  To see the order in which configuration files are read, run vim --version.

You may also want to link to the inputrc file to get a compatible readline setup `ln -s dotvim/inputrc .inputrc`.

Pathogen
========
in the autoload subdir is pathogen.  pathogen loads all the plugins in the bundle subdir.

Plugins in bundle
=================

snipmate
--------
expands shortcodes into code snippets.  the following packages are
dependencies of snipmate:
	tlib_vim
	vim-addon-mw-utils
vim-snippets is a modified version of
	https://github.com/honza/vim-snippets/blob/master/snippets/python.snippets
that defines the snippets recognised by snipmate.

python-pep8-indent
------------------
 fixes the Python indentation to make it PEP8 compliant. From 
	https://github.com/hynek/vim-python-pep8-indent

vim-flake8
----------
https://github.com/nvie/vim-flake8
dependency is flake8, which can be installed using pip.
currently set up to be called by the <F7> key.

candidates for possible inclusion later
---------------------------------------
for unit testing
https://github.com/nvie/vim-pyunit
