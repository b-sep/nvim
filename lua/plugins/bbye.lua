return {
  'moll/vim-bbye',
  config = function ()
    vim.keymap.set('n', '<C-w>', ':Bdelete<cr>')
  end
}
