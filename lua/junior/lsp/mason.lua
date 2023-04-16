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
