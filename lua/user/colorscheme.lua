local colorscheme = "onedark"

require('onedark').setup {
    style = 'warm',
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    -- toggle theme style ---
    toggle_style_key = "<a>;", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
}

vim.g.tokyonight_style = "storm"
vim.g.tokyonight_transparent_sidebar = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
