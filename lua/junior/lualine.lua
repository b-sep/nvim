local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    -- disabled_filetypes = {
    --   statusline = { 'NvimTree' }
    -- },
    globalstatus = true,
  },
  sections = {
    lualine_b = {
      {
        'branch',
        icon = { '󰘬', color = { fg = 'white' } },
        color = { fg = '#ffffff' },
        padding = 2
      },
      'diff',
      'diagnostics'
    },
  }
})
