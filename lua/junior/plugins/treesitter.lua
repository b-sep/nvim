local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup {
  ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'ruby', 'typescript', 'python' },
  indent = {
    enable = true,
    disable = { 'ruby' }
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<cr>'
    }
  },
  playground = {
    enable = true
  },
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { 'BufWrite', 'CursorHold' }
  }
}
