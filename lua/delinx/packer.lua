-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- FZF
    use { 'ibhagwan/fzf-lua',
        -- optional for icon support
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    -- init.lua

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    use { "lukas-reineke/lsp-format.nvim" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "ThePrimeagen/harpoon" }
    use { "github/copilot.vim" }
    -- use { "Yggdroot/indentLine" }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { "lewis6991/gitsigns.nvim" }
    use { "mfussenegger/nvim-lint" }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { "p00f/nvim-ts-rainbow" }
    use { "lukas-reineke/virt-column.nvim" }
    use { "mbbill/undotree" }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use { "lukas-reineke/indent-blankline.nvim" }
    use({
        'noib3/nvim-cokeline',
        requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
        config = function()
            require('cokeline').setup()
        end
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use { "folke/trouble.nvim" }

end)
