local status_mason_ok, mason = pcall(require, 'mason')
if not status_mason_ok then
  return
end

local status_mason_lspconfig_ok, mason_lsp_config = pcall(require, 'mason-lspconfig')
if not status_mason_lspconfig_ok then
  return
end

local servers = require('junior.lsp.servers')

mason.setup()

mason_lsp_config.setup({
  ensure_installed = servers,
  automatic_installation = true
})

mason_lsp_config.setup_handlers({
  function(server_name)
    local opts = {}
    local handler = require("junior.lsp.handlers")

    opts = {
      on_attach = handler.on_attach,
      capabilities = handler.capabilities,
    }

    local settings_ok, settings = pcall(require, 'junior.lsp.settings.' .. server_name)
    if settings_ok then
      opts = vim.tbl_deep_extend('force', settings, opts)
    end

    require('lspconfig')[server_name].setup(opts)
  end
})
