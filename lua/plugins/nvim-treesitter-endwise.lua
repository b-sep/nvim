return {
  'RRethy/nvim-treesitter-endwise',
  ft = "ruby",
  config = function()
    require('nvim-treesitter.configs').setup {
      endwise = {
        enable = true,
      },
    }
  end
}
