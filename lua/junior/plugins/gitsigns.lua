local status_ok, gitsigns = pcall(require, 'gitsigns')
if not status_ok then
  return
end

gitsigns.setup({
  signs = {
    add = { text = '▎' },
    change = { text = "▎" },
    delete = { text = '▎' },
    topdelete = { text = '▎' },
    changedelete = { text = '▎' }
  },
  current_line_blame = false,
  current_line_blame_opts = {
    delay = 1000
  },
  current_line_blame_formatter = '<author>, <author_time:%d-%m-%Y> - <summary>'
})
