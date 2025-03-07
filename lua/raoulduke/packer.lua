-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use({
         "hinell/lsp-timeout.nvim",
        requires={ "neovim/nvim-lspconfig" },
        setup = function()
            vim.g["lsp-timeout-config"] = {
                stopTimeout  = 1000 * 60 * 5,  -- ms, timeout before stopping all LSP servers
                startTimeout = 1000 * 10,      -- ms, timeout before restart
                silent       = false
            }
        end
    })

    -- themes
	use({'rose-pine/neovim', as = 'rose-pine',})
    use({"EdenEast/nightfox.nvim", as="nightfox" })
    use({ "ellisonleao/gruvbox.nvim", as="gruvbox" })
    use({'navarasu/onedark.nvim', as="onedark"})
    use({ "catppuccin/nvim", as = "catppuccin"})
    use ({ 'projekt0n/github-nvim-theme', as="github-theme"})

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        event = 'ColorScheme',
    })

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/nvim-treesitter-context')
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('tpope/vim-repeat')
	use('tpope/vim-commentary')
	use('tpope/vim-surround')
	use('EgZvor/vim-black')
	use('kshenoy/vim-signature')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use ({
        'jose-elias-alvarez/typescript.nvim',
        config = function()
          require("typescript").setup({})
        end,
    })
end)
