local status_ok, onedarkpro = pcall(require, 'onedarkpro')
if not status_ok then
  return
end

vim.cmd('colorscheme onedark')

onedarkpro.setup()
