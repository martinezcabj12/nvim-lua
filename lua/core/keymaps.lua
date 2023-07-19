--mapeo establecido para nuestra combinaciones
vim.g.mapleader = " "
--mapeo de combinaciones
--Para salir del modo insertar o visual
vim.api.nvim_set_keymap("i", "jk", "<ESC>",{noremap = true})

--Para limpiar la busqueda
vim.keymap.set("n","<leader>h", ":nohlsearch<CR>", { silent = true})



-- Archivo keymaps.lua
local map = vim.api.nvim_set_keymap
-- Mapeo de Espacio + W para guardar
map('n', '<Space>w', ':w<CR>', { noremap = true, silent = true })
-- Mapeo de Espacio + Q para cerrar
map('n', '<Space>q', ':q<CR>', { noremap = true, silent = true })
-- Mapeo de Espacio + A para guardar y cerrar
map('n', '<Space>a', ':wq<CR>', { noremap = true, silent = true })
   
-- Definir las opciones para el mapeo
local opts = { noremap = true, silent = true }

-- Mapeo para desplazar hacia la izquierda en modo visual
vim.api.nvim_set_keymap("v", "<", "<gv^", opts)

-- Mapeo para desplazar hacia la derecha en modo visual
vim.api.nvim_set_keymap("v", ">", ">gv^", opts)

-- Mapeo para mover el bloque hacia abajo una línea
vim.api.nvim_set_keymap("x", "J", ":m '>+1<CR>gv=gv", opts)

-- Mapeo para mover el bloque hacia arriba dos líneas
vim.api.nvim_set_keymap("x", "K", ":m '<-2<CR>gv=gv", opts)

-- Mapeo para mover el bloque hacia abajo una línea utilizando <Alt-j>
vim.api.nvim_set_keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)

-- Mapeo para mover el bloque hacia arriba dos líneas utilizando <Alt-k>
vim.api.nvim_set_keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)
