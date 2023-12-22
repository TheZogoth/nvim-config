NeoVIM configuration
====================

This is an attempt at making my NeoVIM configuration modular. It is not a very
extensive configuration, but rather tries to make my editing more pleasurable. I
don't expect anyone else to enjoy my configuration.

TODO
----

Sorted by how annoyed I am about the item.

1. Find a way to disable the mouse scroll wheel.
1. Formatting tools support, most pressing is clang-format.
1. It would be nice to render markdown within nvim.
1. Add Java support, although this might become moot soonish.

Plugins
-------

Using folke/lazy as plugin manager. It's configured to load any configuration
located in lua/plugins.

**Current list of plugins**

* hrsh7th/nvim-cmp
  Dependencies:
  * 'hrsh7th/cmp-buffer'
  * 'hrsh7th/cmp-cmdline'
  * 'hrsh7th/cmp-nvim-lsp'
  * 'hrsh7th/cmp-path'
  * 'hrsh7th/cmp-vsnip'
  * 'hrsh7th/vim-vsnip'
* neovim/nvim-lspconfig
  Plugin to help with configuration of language servers.
  Languages configured:
  * C/C++/CUDA
    Using clangd. Configured to use six workers.
* nvim-telescope/telescope
  Dependencies:
  * 'nvim-lua/plenary.nvim'

[//]: # vi: ts=2 sw=2 sts=2 tw=80 et
