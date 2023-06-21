-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })
	use({ "theprimeagen/refactoring.nvim" })
	use({ "github/copilot.vim" })
	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "folke/noice.nvim" })
	use({ "norcalli/nvim-colorizer.lua" })
	use({ "MunifTanjim/nui.nvim" })
	use({ "stevearc/dressing.nvim" })
	use({ "akinsho/toggleterm.nvim" })
	use({ "windwp/nvim-autopairs" })
	use({ "kyazdani42/nvim-tree.lua" })
	-- Cmp
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	-- Snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	use({ "ahmedkhalf/project.nvim" })
	use({
		"VonHeikemen/searchbox.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "echasnovski/mini.nvim", branch = "stable" })
	use({ "folke/which-key.nvim" })
	use({ "rcarriga/nvim-notify" })
	use({ "RRethy/vim-illuminate" })
	use({
		"goolord/alpha-nvim",
		config = function()
			require("bbilling.config.alpha")
		end,
	})
	use("nvim-lualine/lualine.nvim")
	use("lewis6991/gitsigns.nvim")
	use({
		"akinsho/bufferline.nvim",
		after = "catppuccin",
		config = function()
			require("bufferline").setup({
				highlights = require("catppuccin.groups.integrations.bufferline").get(),
			})
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "nvim-treesitter/nvim-treesitter-context" })
	use({ "nvim-treesitter/playground" })
	use({ "theprimeagen/harpoon" })
	use({ "mbbill/undotree" })
	use({ "nvim-tree/nvim-web-devicons" })
	use({ "tpope/vim-fugitive" })
	use({ "windwp/nvim-ts-autotag" })
	use({ "numToStr/Comment.nvim" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({
		"folke/trouble.nvim",
		requires = { { "nvim-tree/nvim-web-devicons" } },
	})
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
