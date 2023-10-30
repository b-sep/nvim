local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
  return
end

null_ls.setup({
  on_attach = require('junior.lsp.handlers').on_attach,
  sources = {
    null_ls.builtins.diagnostics.eslint,
  },
  update_in_insert = true
})
