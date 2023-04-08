-- Modes
  --  normal_mode = 'n'
  --  insert_mode = 'i'
  --  visual_mode = 'v'
  --  visual_block_mode = 'x'
  --  term_mode = 't'
  --  command_mode = 'c'

local opts = { noremap = true, silent = true }           -- noremap (mapeia SEM recursividade), silent (mapeia sem output)

local keymap = vim.api.nvim_set_keymap                   -- configura um mapeamento global para o modo informado

-- Configura tecla principal
keymap('', "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '

-- Modo normal --
keymap("n", "<C-h>", "<C-w>h", opts)                     -- mapeia ctrl + h para ir para a janela da esquerda
keymap("n", "<C-j>", "<C-w>j", opts)                     -- mapeia ctrl + j para ir para a janela abaixo
keymap("n", "<C-k>", "<C-w>k", opts)                     -- mapeia ctrl + k para ir para a janela de cima
keymap("n", "<C-l>", "<C-w>l", opts)                     -- mapeia ctrl + l para ir para a janela da direita
keymap("n", "<C-s>", ":w<CR>", opts)                     -- mapeia ctrl + s para salvar (escrever)
keymap("n", "<leader>e", ":Lex 15<CR>", opts)            -- mapeia tecla líder(espaço) + e para abrir o explorer

-- Redimensionar janelas
keymap("n", "<A-h>", ":vertical resize +2<CR>", opts)    -- mapeia alt + h para redimensionar para a esquerda
keymap("n", "<A-l>", ":vertical resize -2<CR>", opts)    -- mapeia alt + l para redimensionar para a direita
keymap("n", "<A-j>", ":resize -2<CR>", opts)             -- mapeia alt + j pare redimensionar para baixo
keymap("n", "<A-k>", ":resize +2<CR>", opts)             -- mapeia alt + k para redimensionar para cima

-- Navegar entre buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)


-- Modo de inserção --
keymap("i", "<A-,>", "<ESC>", opts)                      -- mapei alt + , para ir para o modo normal
keymap("i", "<S-Tab>", "<C-d>", opts)                    -- mapeia shit + tab para remover uma indentação
keymap("i", "<A-k>", "<ESC>:m .-2<CR>==gi", opts)        -- move a linha para cima em modo de inserção
keymap("i", "<A-j>", "<ESC>:m .+1<CR>==gi", opts)        -- move a linha para baixo em modo de inserção


-- Modo de visualização --
keymap("v", "<S-Tab>", "<gv", opts)                      -- mapeia < para mover a linha e continuar no modo visual
keymap("v", "<tab>", ">gv", opts)                        -- mapeia > para mover a linha e continuar no modo visual
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)           -- move a linha para baixo
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)           -- move a linha para cima
keymap("v", "p", '"_dP"', opts)                          -- 