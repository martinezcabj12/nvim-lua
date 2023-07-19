--mapeo establecido para nuestra combinaciones
vim.g.mapleader = " "
--habilitar los numero de la lineas
vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 3 --tab con 4 espacio
vim.opt.shiftwidth = 3
vim.opt.expandtab = true

--habilitar el portapapeles con el sistema operativo
vim.o.clipboard = "unnamedplus"


--habilitar la interaccion del mouse
vim.o.mouse = "a"

--resaltar la lineas
vim.wo.cursorline = true

----muestra la columna limite a 120 caracteres
--vim.wo.colorcolumn = "80"




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

