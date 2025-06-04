return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  config = function ()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      auto_install = false,
      ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'ruby', 'typescript', 'python', 'elixir', 'heex', 'javascript', 'html', 'css', 'erlang', 'sql' },
      incremental_selection = { enable = false },
      indent = { enable = true, disable = { 'ruby', 'css' } },
      highlight = {
        additional_vim_regex_highlighting = true,
        disable = function(lang, buf) -- disable tree-sitter highlight in big files
          local max_filesize = 100 * 1024
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))

          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        enable = true,
      },
      sync_install = false,
    })
  end
}
