return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function ()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'ruby', 'typescript', 'python', 'elixir', 'heex', 'javascript', 'html', 'css' },
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
        enable = false
      },
      playground = {
        enable = true
      },
      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { 'BufWrite', 'CursorHold' }
      }
    })
  end
}
