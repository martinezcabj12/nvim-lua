require'nvim-treesitter.configs'.setup {
-- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "vim", "typescript", "javascript", "sql", "python" },
  autotag = {
      enable = true,
  },
  -- Install parsers sync
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
