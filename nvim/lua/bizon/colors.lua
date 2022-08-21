vim.g.syntax_on = true

-- tokyo setup
local colorscheme = "tokyonight"
vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_style = "storm"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
