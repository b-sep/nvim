require("gruvbox").setup({
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
})

vim.opt.background = "dark"
local colorscheme = "colorscheme gruvbox"

local status_ok, _ = pcall(vim.cmd, colorscheme)
if not status_ok then
  vim.notify('something is wrong with your colorscheme')
  return
end
