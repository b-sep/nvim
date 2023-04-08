local fn = vim.fn

-- Instala packer.nvim
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }

  print "Instando packer.nvim.."
  vim.cmd [[packadd packer.nvim]]
end

-- Recarrega o Neovim toda vez que o arquivo plugins.lua é alterado
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Usa protected call(lua) para dar require no packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Packer usa janela popup
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins
return packer.startup(function(use)
  use "wbthomason/packer.nvim"      -- gerencia plugins
  use "nvim-lua/plenary.nvim"       -- funções lua




  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
