local fn = vim.fn     -- (vim function)

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
  use "wbthomason/packer.nvim"                                       -- gerencia plugins

  -- colorscheme
  use "ellisonleao/gruvbox.nvim"

  -- auto complets
  use "hrsh7th/cmp-buffer"                                           -- auto complete buffer
  use "hrsh7th/cmp-cmdline"                                          -- auto complete cmd
  use "hrsh7th/cmp-path"                                             -- auto complete path
  use "hrsh7th/cmp-nvim-lsp"                                         -- auto complete lsp
  use "hrsh7th/cmp-nvim-lua"                                         -- auto complete (vim. #)
  use "saadparwaiz1/cmp_luasnip"                                     -- auto complette snippets
  use "hrsh7th/nvim-cmp"                                             -- auto complete plugin

  -- snippets
  use "L3MON4D3/LuaSnip"                                             -- snippet engine
  use "rafamadriz/friendly-snippets"                                 -- snippets 

  -- LSP
  use { "williamboman/mason.nvim", run = ":MasonUpdate" }            -- package manager para LSP's
  use "williamboman/mason-lspconfig.nvim"                            -- 
  use "neovim/nvim-lspconfig"                                        -- habilita LSP
  use "RRethy/vim-illuminate"                                        -- highlight

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }    -- telescope 'sorter'

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
