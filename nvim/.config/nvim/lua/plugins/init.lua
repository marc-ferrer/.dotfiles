return {
    {'rose-pine/neovim', name = 'rose-pine'},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'theprimeagen/harpoon'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    -- LSP Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig'
    },
    -- Snippets
    { 'rafamadriz/friendly-snippets', lazy = false },
    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lua'},
            {'hrsh7th/cmp-cmdline'},
            {'saadparwaiz1/cmp_luasnip'}
        }
    }
}
