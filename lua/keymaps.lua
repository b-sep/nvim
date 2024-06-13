local opts = { noremap = true, silent = true }           -- noremap (mapeia SEM recursividade), silent (mapeia sem output)
local keymap = vim.api.nvim_set_keymap                   -- configura um mapeamento global para o modo informado
local builtin = require('telescope.builtin')

-- Modo normal --
keymap('n', '<leader>e', ':NvimTreeToggle<cr>', opts)    -- mapeia tecla líder(espaço) + e para abrir o explorer
keymap('n', '<leader>q', ':q<cr>', opts)
keymap('n', '<leader>Q', ':qa<cr>', opts)
keymap('n', '<C-h>', '<C-w>h', opts)                     -- mapeia ctrl + h para ir para a janela da esquerda
keymap('n', '<C-l>', '<C-w>l', opts)                     -- mapeia ctrl + l para ir para a janela da direita
keymap('n', '<C-j>', '<C-w>j', opts)                     -- mapeia ctrl + j para ir para a janela abaixo
keymap('n', '<C-k>', '<C-w>k', opts)                     -- mapeia ctrl + k para ir para a janela de cima
keymap('n', '<C-\\>', ':vsp<cr>', opts)                  -- split na tela verticalmente
keymap('n', '<A-,>', ':sp<cr>', opts)                  -- split na tela verticalmente
keymap('n', '<C-s>', ':w<cr>', opts)                     -- salva o arquivo
keymap('n', '<A-z>', ':set wrap!<cr>', opts)
keymap('n', '<A-p>', ':MarkdownPreviewToggle<cr>', opts)     -- markdown preview
keymap('n', '<C-w>', ':Bdelete<cr>', opts)
vim.keymap.set('n', '<C-e>', builtin.find_files, opts)
vim.keymap.set('n', '<leader>f', builtin.live_grep, opts)
vim.keymap.set('n', 'F', builtin.buffers, opts)

-- Redimensionar janelas
keymap('n', '<A-h>', ':vertical resize +2<cr>', opts)    -- mapeia alt + h para redimensionar para a esquerda
keymap('n', '<A-l>', ':vertical resize -2<cr>', opts)    -- mapeia alt + l para redimensionar para a direita
keymap('n', '<A-j>', ':resize -2<cr>', opts)             -- mapeia alt + j pare redimensionar para baixo
keymap('n', '<A-k>', ':resize +2<cr>', opts)             -- mapeia alt + k para redimensionar para cima

-- Navegar entre buffers
keymap('n', '<S-l>', ':bnext<cr>', opts)
keymap('n', '<S-h>', ':bprevious<cr>', opts)

-- Modo de inserção --
keymap('i', '<S-Tab>', '<C-d>', opts)                    -- mapeia shit + tab para remover uma indentação
keymap('i', '<A-k>', '<ESC>:m .-2<cr>==gi', opts)        -- move a linha para cima em modo de inserção
keymap('i', '<A-j>', '<ESC>:m .+1<cr>==gi', opts)        -- move a linha para baixo em modo de inserção
keymap('i', '<C-s>', '<ESC>:w<cr>', opts)                -- salva o arquivo
keymap('i', '<C-e>', "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap('i', '<A-z>', '<ESC>:set wrap!<cr>==gi', opts)
vim.keymap.set('i', '<C-_>', function() require('Comment.api').toggle.linewise.current() end, opts) -- commentario com ctrl / no modo de inserção

-- Modo de visualização --
keymap('v', '<S-Tab>', '<gv', opts)                      -- mapeia < para mover a linha e continuar no modo visual
keymap('v', '<tab>', '>gv', opts)                        -- mapeia > para mover a linha e continuar no modo visual
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", opts)           -- move a linha para baixo
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", opts)           -- move a linha para cima
keymap('v', 'p', '"_dP"', opts)                          --
