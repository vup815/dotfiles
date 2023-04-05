-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'mfussenegger/nvim-jdtls'
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'folke/tokyonight.nvim'
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
    use {
        "NvChad/nvterm",
        config = function ()
            require("nvterm").setup()
        end,
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    --use({ 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine-moon') end })
    use('ThePrimeagen/harpoon')
    use('tpope/vim-fugitive')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

 --[[
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
    --]]
end)
