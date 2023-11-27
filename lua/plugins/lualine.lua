return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require('lualine')

    lualine.setup({
      options = {
        icons_enabled = true,
        theme = 'catppuccin',
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
        lualine_c = {
          {
            'filename',
            path = 1  -- relative path
          }
        }
      }
    })
  end
}
