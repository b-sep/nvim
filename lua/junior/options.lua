local opt = vim.opt  -- (set vimscript)

opt.backup = false                          -- não gera backup
opt.clipboard = "unnamedplus"               -- da acesso ao clipboard do sistema ao neovim
opt.cmdheight = 2                           -- espaço na linha de comando do neovim
opt.completeopt = { "menuone", "noselect" } -- lista de comandos separada por vírgula (insert mode)
opt.conceallevel = 2                        -- torna `` visivel em arquivos markdown
opt.ignorecase = true                       -- ignora case em buscas
opt.mouse = ''                              -- desabilita mouse
opt.pumheight = 10                          -- número máximo de itens para aparecer em menu popup
opt.showmode = false                        -- desabilita -- INSERT -- e similares
opt.showtabline = 2                         -- sempre mostra tabs
opt.smartcase = true                        -- smart case
opt.smartindent = true                      -- indentação inteligente
opt.splitbelow = true                       -- ao fazer split horizontal coloca o novo split embaixo do atual
opt.splitright = true                       -- ao fazer split vertical coloca o novo split ao lado direito do atual
opt.swapfile = false                        -- não cria swapfile

opt.termguicolors = true                    -- define cores do terminal dentro do neovim (desligar depois)

opt.timeoutlen = 1000                       -- tempo de espera para combinar comando com várias teclas (default é 1000, deixando aqui para ficar explicito)
opt.updatetime = 300                        -- auto-complete mais rápido (default 4000)
opt.writebackup = false                     -- não gera backup durante a escrita de um arquivo
opt.expandtab = true                        -- converte tab em espaço
opt.shiftwidth = 2                          -- quantidade de espaço inseridos para cada indentação
opt.tabstop = 2                             -- insere 2 espaços a cada tab
opt.cursorline = true                       -- destaca linha atual
opt.number = true                           -- mostra número da linha
opt.relativenumber = true                   -- mostra número relativo a linha atual
opt.numberwidth = 4                         -- tamanho da coluna de números (default é 4, apenas evidenciando)
opt.signcolumn = "yes"                      -- sempre mostra coluna de sinalização (antes dos números), caso contrário o texto mudaria
opt.wrap = true                             -- quebra linha caso seja mais que a largura da tela
opt.scrolloff = 8                           -- mínimo de linhas acima e abaixo da linha atual
opt.guifont = "monospace:h17"               -- fonte
opt.iskeyword:append({'+', '=', '-'})

vim.cmd "set whichwrap+=<,>,[,],h,l"        -- habilita left/right quebrar a linha e subir ou descer de linha quando chegar no final ou começo da mesma

