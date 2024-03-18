--NOTA:
-- I altera la visibilidad de carpetas/archivos ocultosj
-- H altera la visibilidad de los archivos puntos (archivos/carpetas que comienzan con '.')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.nvim_tree_hide_dotfiles = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- custom mappings
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
-- Recargar NvimTree
vim.api.nvim_set_keymap('n', '<leader>rr', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})


-- OR setup with some options
require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    indent_markers = {
          enable = true,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
  	},
  },
  filters = {
    dotfiles = true,
  },
})

