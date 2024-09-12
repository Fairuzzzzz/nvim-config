return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        local mason = require('mason')
        
        local mason_lspconfig = require('mason-lspconfig')

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        mason_lspconfig.setup({
            ensure_installed = {
                'gopls',
                'lua_ls',
                'clangd',
                'ast_grep',
                'html',
                'cssls',
                'dockerls',
                'marksman',
                'pyright'
            },
            automatic_installation = true, -- not the same as ensure_installed
        })
    end,
}
