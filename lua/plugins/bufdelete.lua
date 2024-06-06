return {
  'famiu/bufdelete.nvim',
  config = function()
    vim.keymap.set('n', '<C-w>', ':Bdelete<cr>', { noremap = true, silent = true })
  end
}
