local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local status1_ok, masonlspconfig = pcall(require, "mason-lspconfig")
if not status1_ok then
	return
end

local servers = {
  "stylua",
  "black",
  "prettier",
  "clang-format",
  "elslint_d",
  "eslint"
}
masonlspconfig.setup({
  ensure_installed = servers,
  auto_install = true,
})

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  fallback_severity = vim.diagnostic.severity.INFO,
  sources = {
    formatting.prettier.with { extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } },
    formatting.black.with { extra_args = { "--fast" } },
    formatting.clang_format.with { extra_args = { "--style=file" } },
    -- formatting.yapf,
    formatting.stylua,
    
    -- set diagnostics MAXseverity to WARN for eslint_d diagnostics
    diagnostics.eslint_d.with { max_severity = vim.diagnostic.severity.WARNING },
    --[[ formatting.eslint_d ]]
  },
}
