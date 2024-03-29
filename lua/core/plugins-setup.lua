local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  --insert packer plugins between this lines

  --theme
  --  use "folke/tokyonight.nvim"
  --  use "oxfist/night-owl.nvim"
  --  use "ChristianChiarulli/onedark.nvim"
  -- use "lunarvim/darkplus.nvim"
  -- use ({ 'projekt0n/github-nvim-theme' })
  use 'JoosepAlviste/palenightfall.nvim'
  -- lua line theme
  use "nvim-lualine/lualine.nvim"

  -- live server
use({
  "aurum77/live-server.nvim",
    run = function()
      require"live_server.util".install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  })

  --Habilitar el movimiento entre ventana
  use "christoomey/vim-tmux-navigator"

  --nvim tree for sidebar & telescope
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-treesitter/nvim-treesitter"


  --autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  --completions
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"

  --formatter
  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "saadparwaiz1/cmp_luasnip"

  --lsp -> lenguage server protocols
  use {
   "williamboman/mason.nvim",
   "williamboman/mason-lspconfig.nvim",
   "neovim/nvim-lspconfig",
   "jose-elias-alvarez/typescript.nvim",
   "onsails/lspkind.nvim"
  }

  use ({
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
    config = function()
        require('lspsaga').setup({})
    end,
  })


  --identacion de anidamiento
  use {"lukas-reineke/indent-blankline.nvim"}

  -- Rest-nvim para API
  use {
  	"rest-nvim/rest.nvim",
  	requires = { "nvim-lua/plenary.nvim" }}

  --Markdown Preview for nvim
  use {"iamcco/markdown-preview.nvim"}

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- telescope setup, fuzzy finder
  use {
     "nvim-telescope/telescope.nvim",
     tag = "0.1.5",
     requires = {{"nvim-lua/plenary.nvim"}}
  }
  --end if plugins sections
  if packer_bootstrap then
    require('packer').sync()
  end
end)
