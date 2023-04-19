local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup {
  options = {
    mode = 'buffers',
    separator_style = 'thin',
    indicator = { icon = "▎", style = "icon" },
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'Explorer',
        text_align = 'center',
        separator = true,
      }
    },
    show_buffer_close_icons = false,
    show_buffer_default_icon = true,
    show_close_icon = false,
  },
}
