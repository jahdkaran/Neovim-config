local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status1_ok, masonlspconfig = pcall(require, "mason-lspconfig")
if not status1_ok then
	return
end


local lspconfig = require("lspconfig")

mason.setup()

local servers = {
	"jsonls",
	"sumneko_lua",
	"angularls",
	"cssls",
	"cssmodules_ls",
	"grammarly",
	"html",
	"ltex",
	"tsserver",
	"prosemd_lsp",
}

masonlspconfig.setup({
	ensure_installed = servers,
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)

end
