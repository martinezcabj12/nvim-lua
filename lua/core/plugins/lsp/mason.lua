local mason_status, mason = pcall(require,"mason")
if not mason_status then
   return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
   return
end

mason.setup()

mason_lspconfig.setup({
   ensure_installed = {
      "lua_ls",--lua
      "angularls",--angular
      "tsserver",--typescript
      "bashls",--bash
      "clangd", --c++
      "rust_analyzer",--rust
      "cssls",--css
      "html",
      "marksman",--markdown
      "pylsp", -- python
      "cssmodules_ls", -- css
      "unocss", -- css
      "autotools_ls",
      "jdtls", -- java
      "emmet_language_server", -- emmet
      "emmet_ls"
   }
})


