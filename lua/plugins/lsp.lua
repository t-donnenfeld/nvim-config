return {
	{
		"williamboman/mason.nvim",
		config = function(_, opts)
			require("mason").setup(opts)
		end
	},
	{
		"williamboman/mason-lspconfig.nvim"
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mason.nvim", { "williamboman/mason-lspconfig.nvim", config = function() end } }
	},
	{
		"lukas-reineke/lsp-format.nvim",
		config = function(_, opts)
			require("lsp-format").setup {}
			require("lspconfig").rust_analyzer.setup { on_attach = require("lsp-format").on_attach }
			require("lspconfig").lua_ls.setup { on_attach = require("lsp-format").on_attach }
		end
	},
}
