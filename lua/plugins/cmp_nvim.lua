return {
  'hrsh7th/cmp-nvim-lsp',
  dependencies = {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip'
  },
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    local kind_icons = {
      Text = '',
      Method = 'm',
      Function = '󰊕',
      Constructor = '',
      Field = '',
      Variable = '󰝮',
      Class = '',
      Interface = '',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '',
      Keyword = '󰌆',
      Snippet = '',
      Color = '',
      File = '',
      Reference = '',
      Folder = '󰉋',
      EnumMember = '',
      Constant = '',
      Struct = '',
      Event = '',
      Operator = '',
      TypeParameter = '󰊄',
    }
    local check_backspace = function()
      local col = vim.fn.col '.' - 1
      return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s'
    end
    local mapping = {
      ['<C-k>'] = cmp.mapping.select_prev_item(),
      ['<C-j>'] = cmp.mapping.select_next_item(),
      ['<Up>'] = cmp.mapping.select_prev_item(),
      ['<Down>'] = cmp.mapping.select_next_item(),
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c", }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c", }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { "i", "c", }),
      ['<C-e>'] = cmp.mapping {
        i = cmp.mapping.abort(),
        n = cmp.mapping.close()
      },
      ['<esc>'] = cmp.mapping {
        i = cmp.mapping.abort(),
        n = cmp.mapping.close()
      },
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function (fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif luasnip.expandable() then
          luasnip.expand()
        elseif luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        elseif check_backspace() then
          fallback()
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { 'i', 's' })
    }

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
      },
      mapping = mapping,
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' }
      },
      formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, vim_item)
          vim_item.kind = string.format("%s", kind_icons[vim_item.kind])

          vim_item.menu = ({
            nvim_lsp = '[LSP]',
            luasnip = '[snippet]',
            buffer = '[buffer]',
            path = '[path]',
          })[entry.source.name]
          return vim_item
        end
      },
      confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false
      }
    })
  end
}
