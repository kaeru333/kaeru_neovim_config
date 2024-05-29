local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug("folke/tokyonight.nvim") -- colorscheme
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.6' }) -- 強化版nerdtree
Plug('nvim-lua/plenary.nvim') -- telescopeに必要
Plug('cohama/lexima.vim') -- 括弧補完
Plug('neovim/nvim-lspconfig') -- 各種補完
Plug('williamboman/mason.nvim') -- mason-lspconfigに必要
Plug('williamboman/mason-lspconfig.nvim') -- lspの管理
Plug('wbthomason/packer.nvim')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/vim-vsnip')
Plug('nvim-lualine/lualine.nvim') -- lualineをモダンな見た目に
-- Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('jupyter-vim/jupyter-vim') -- jupyterの対話環境
Plug('vim-denops/denops.vim') -- plugin開発

vim.call('plug#end')

vim.cmd[[colorscheme tokyonight-moon]]
