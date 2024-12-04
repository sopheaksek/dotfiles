return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", opts = {} },
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
--		vim.api.nvim_create_autocmd("LspAttach", {
--			group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
--			callback = function(event)
--				local map = function(keys, func, desc, mode)
--					mode = mode or "n"
--					vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
--				end
--
--				map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
--				map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })
--				map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")
--			end,
--		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

		local mason_packages = vim.fn.stdpath("data") .. "/mason/packages"
		local volar_path = mason_packages .. "/vue-language-server/node_modules/@vue/language-server"
		local servers = {
			gopls = {},
			ts_ls = {
				on_attach = function(client, bufnr)
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentFormattingRangeProvider = false
					vim.api.nvim_buf_set_keymap(
						bufnr,
						"n",
						"<space>fm",
						"<cmd>lua vim.lsp.buf.format({async = true})<CR>",
						{}
					)
				end,
				filetypes = { "vue", "javascript", "typescript" },
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = volar_path,
							languages = { "vue" },
						},
					},
				},
			},
			lua_ls = {},
		}

		require("mason").setup()

		local ensure_installed = vim.tbl_keys(servers or {})

		vim.list_extend(ensure_installed, {
			"stylua",
			"prettierd",
			"gofumpt",
		})

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		require("mason-lspconfig").setup({
			handlers = {
				function(server_name)
					local server = servers[server_name] or {}
					server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
					require("lspconfig")[server_name].setup(server)
				end,
			},
		})
	end,
}
