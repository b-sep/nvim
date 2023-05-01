local status_ok, lspconfig = pcall(require, 'lspconfig')
if not status_ok then
  return
end

local servers = require("junior.lsp.servers")

for _, server in pairs(servers) do
  local opts = {}
  local handler = require("junior.lsp.handlers")

  opts = {
    on_attach = handler.on_attach,
    capabilities = handler.capabilities,
  }

  local settings_ok, settings = pcall(require, 'junior.lsp.settings.' .. server)
  if settings_ok then
    opts = vim.tbl_deep_extend('force', settings, opts)
  end

  lspconfig[server].setup(opts)
end
