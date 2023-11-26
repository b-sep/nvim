local status_ok, indent_blankline = pcall(require, 'ibl')
if not status_ok then
  return
end

indent_blankline.setup({
  debounce = 100,
  indent = {
    char = "▏"
  },
  scope = {
    show_start = false,
    show_end = false,
    include = {
      node_type = {
        ruby = { "if", "unless" },
        lua = { "table_constructor" }
      }
    }
  }
})
