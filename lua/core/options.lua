--opciones para nvim
local options = {
  backup = false,                          -- crea un archivo de copia de seguridad
  clipboard = "unnamedplus",               -- permite a neovim acceder al portapapeles del sistema
  cmdheight = 2,                           -- mas espacio en la linea de comandos de neovim para mostrar mensajes
  completeopt = { "menuone", "noselect" }, -- mayormente solo para cmp
  conceallevel = 0,                        -- para que ("") se visible en los archivos markdown
  fileencoding = "utf-8",                  -- la codificacion escrita en un archivo
  hlsearch = true,                         -- resaltar todas las coincidencias del patro de busqueda anterior
  ignorecase = true,                       -- ignorar mayusculas y minusculas en los patrones de busqueda
  mouse = "a",                             -- permitir el uso del raton en neovim
  pumheight = 10,                          -- altura del menu emergente
  showmode = true,                        -- ya no necesitamos ver cosas como --INSERTAR
  showtabline = 1,                         -- mostrar siempre las pestañas
  smartcase = true,                        -- mayusculas y minusculas inteligentes
  smartindent = true,                      -- hacer la sangria mas inteligente de nuevo
  splitbelow = true,                       -- fuerza que todas la divisiones horizontales vayan por debajo de la ventana actual
  splitright = true,                       -- fuerza a todas la divisiones verticales a ir a la derecha de la ventana actual
  swapfile = false,                        -- crea un archivo swapfile
  -- termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- tiempo de espera para completar una secuencia mapeada(en milisegundo)
  undofile = true,                         -- habilitar deshacer persistente
  updatetime = 300,                        -- finalizacion mas rapida(400 ms por defecto)
  writebackup = false,                     -- si un archivo esta siendo editado por otro programa(o fue escrito en el archivo mientras se editaba con otro programa),no se permite su edición
  expandtab = true,                        -- convierte tabuladores en espacio
  shiftwidth = 2,                          -- el numero de espacioinsertados para cada sangria
  tabstop = 2,                             -- insertar 2 espacio por tabulación
  cursorline = true,                       -- resaltar la linea actual
  number = true,                           -- establece lineas numeradas
  relativenumber = true,                  -- establece lineas numeradas relativas
  numberwidth = 4,                         -- establece el ancho de la columna numera en 3 (por defecto 4)

  signcolumn = "yes",                      -- mostrar siempre las columna de signos, de lo contrario desplazaria el texto cada vez
  wrap = true,                             -- mostrar las lineas como una linea larga
  linebreak = true,                        -- compañero para envolver, no dividir la palabras
  scrolloff = 8,                           -- numero minimo de lineas de pantalla a mantener por encima y por debajo del cursor
  sidescrolloff = 8,                       -- numero minimo de columna de pantalla a cada lado del cursor si wrap es 'false'
 -- guifont = "monospace:h17",               -- la fuente usada en aplicaciones graficas neovim
--  whichwrap = "bs<>[]hl",                  -- las teclas "horizontales" puede desplazarse a la linea anterior/siguiente
}
-- Aplicar las opciones de configuración
for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- separa los plugins de vim de neovim en caso de que vim siga en uso
-- Agregar la opción para mostrar una línea vertical en la columna 120
--vim.cmd('set clipboard= unnamedplus')


-- Templates

vim.api.nvim_exec([[
  augroup templates
    autocmd!
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/scriptbash.sh
  augroup END
]], false)

-- Eliminar  espacio vacios en las lineas del final

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = {"*"},
    callback = function(ev)
        save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})


--Para detectar errores, use pcall()
--
--vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--    pattern = {"*"},
--    callback = function()
--      local save_cursor = vim.fn.getpos(".")
--      pcall(function() vim.cmd [[%s/\s\+$//e]] end)
--      vim.fn.setpos(".", save_cursor)
--    end,
--})
