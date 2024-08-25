return {
	-- Mason
	{
		'williamboman/mason.nvim',
	},

	-- Mason-lspconfig
	{
		'williamboman/mason-lspconfig.nvim',
		dependencies = {
			'neovim/nvim-lspconfig',
		}
	},

	--lspconfig
	{
		'neovim/nvim-lspconfig',
		config = function()
			local lspconfig = require('lspconfig')
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			print('lsp cargado')

			-- Setup
			require('mason').setup({})
			require('mason-lspconfig').setup({
				ensure_installed = { 'tsserver', 'lua_ls' }
			})

			-- Conectar a los servers
			-- Typescript
			lspconfig.tsserver.setup({
				capabilities = capabilities,
				on_attach = on_attach
			})

			-- Lua
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				on_attach = on_attach
			})
		end,
	},
}
