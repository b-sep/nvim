local status_ok, lspconfig = pcall(require, 'lspconfig')
if not status_ok then
  return
end

local servers = require("lua.junior.lsp.servers")

for _, server in pairs(servers) do
  local opts = {}
  local handler = require("lua.junior.lsp.handlers")

  opts = {
    on_attach = handler.on_attach,
    capabilities = handler.capabilities,
  }

  if server == 'lua_ls' then
    opts = vim.tbl_deep_extend("force", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }, opts)
  end

  lspconfig[server].setup(opts)
end
