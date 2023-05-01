local status_ok, nightfox = pcall(require, 'nightfox')
if not status_ok then
  return
end

nightfox.setup({
  options = {
    terminal_colors = false
  }
})

vim.cmd("colorscheme carbonfox")
