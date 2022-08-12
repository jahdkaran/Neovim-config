local colorscheme = "onedark"

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha


require('onedark').setup {
    style = 'warm'
}

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
