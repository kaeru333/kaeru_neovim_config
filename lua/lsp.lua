-- Mason setup
require('mason').setup()

-- Mason LSP Config setup
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tsserver", "pyright" },
})

-- LSP setup with capabilities from nvim-cmp
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- LSP サーバーのセットアップ
lspconfig.lua_ls.setup {
    capabilities = capabilities,
}

lspconfig.tsserver.setup {
    capabilities = capabilities,
}

lspconfig.pyright.setup {
    capabilities = capabilities,
}

-- nvim-cmp setup
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    window = {},
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    }, {
        { name = 'buffer' },
    }),
})

-- nvim-cmp setup for command line
cmp.setup.cmdline({'/', '?'}, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

vim.lsp.set_log_level("debug")
print(vim.lsp.get_log_path())
print(vim.lsp.get_log_path())
print(vim.lsp.get_log_path())
