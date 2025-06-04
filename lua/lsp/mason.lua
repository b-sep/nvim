-- local mason = require('mason')
-- local mason_lsp_config = require('mason-lspconfig')

-- local servers = {
--   'clangd',
--   'cssls',
--   -- 'erlangls',
--   'html',
--   'lua_ls',
--   'pyright',
--   'solargraph',
--   'ts_ls'
-- }

-- mason.setup()

-- mason_lsp_config.setup({
--   ensure_installed = servers,
--   automatic_installation = true
-- })

-- mason_lsp_config.setup_handlers({
--   function(server_name)
--     local opts = {}
--     local handler = require("lsp.handlers")

--     opts = {
--       on_attach = handler.on_attach,
--       capabilities = handler.capabilities,
--     }

--     local settings_ok, settings = pcall(require, 'lsp.settings.' .. server_name)
--     if settings_ok then
--       opts = vim.tbl_deep_extend('force', settings, opts)
--     end

--     require('lspconfig')[server_name].setup(opts)
--   end
-- })
