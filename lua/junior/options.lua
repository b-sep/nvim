local opt = vim.opt -- (set vimscript)

local options = {
  backup = false,                          -- não gera backup
  clipboard = "unnamedplus",               -- da acesso ao clipboard do sistema ao neovim
  cmdheight = 1,                           -- espaço na linha de comando do neovim
  completeopt = { "menuone", "noselect" }, -- lista de comandos separada por vírgula (insert mode)
  conceallevel = 2,                        -- torna `` visivel em arquivos markdown
  ignorecase = true,                       -- ignora case em buscas
  mouse = '',                              -- desabilita mouse
  pumheight = 10,                          -- número máximo de itens para aparecer em menu popup
  showmode = false,                        -- desabilita -- INSERT -- e similares
  showtabline = 2,                         -- sempre mostra tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- indentação inteligente
  splitbelow = true,                       -- ao fazer split horizontal coloca o novo split embaixo do atual
  splitright = true,                       -- ao fazer split vertical coloca o novo split ao lado direito do atual
  swapfile = false,                        -- não cria swapfile
  timeoutlen = 1000,                       -- tempo de espera para combinar comando com várias teclas (default é 1000, deixando aqui para ficar explicito)
  updatetime = 300,                        -- auto-complete mais rápido (default 4000)
  writebackup = false,                     -- não gera backup durante a escrita de um arquivo
  expandtab = true,                        -- converte tab em espaço
  shiftwidth = 2,                          -- quantidade de espaço inseridos para cada indentação
  tabstop = 2,                             -- insere 2 espaços a cada tab
  cursorline = true,                       -- destaca linha atual
  number = true,                           -- mostra número da linha
  relativenumber = true,                   -- mostra número relativo a linha atual
  numberwidth = 4,                         -- tamanho da coluna de números (default é 4, apenas evidenciando)
  signcolumn = "yes",                      -- sempre mostra coluna de sinalização (antes dos números), caso contrário o texto mudaria
  wrap = true,                             -- quebra linha caso seja mais que a largura da tela
  scrolloff = 8,                           -- mínimo de linhas acima e abaixo da linha atual
  guifont = "monospace:h17",               -- fonte
  eol = true,                              -- adiciona uma linha em branco no final do arquivo
  termguicolors = true                     -- habilita cores 24-bits
}

for k, v in pairs(options) do
  opt[k] = v
end

opt.iskeyword:append({'+', '=', '-'})      -- trata palavra por +, = ou - como uma única palavra

vim.cmd "set whichwrap+=<,>,[,],h,l"       -- habilita left/right quebrar a linha e subir ou descer de linha quando chegar no final ou começo da mesma
