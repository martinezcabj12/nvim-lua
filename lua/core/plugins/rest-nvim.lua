require("rest-nvim").setup({
  -- Configuración del complemento rest.nvim
  result_split_horizontal = false,
  result_split_in_place = false,
  stay_in_current_window_after_split = false,
  skip_ssl_verification = false,
  encode_url = true,
  highlight = {
    enabled = true,
    timeout = 150,
  },
  result = {
    show_url = true,
    show_curl_command = false,
    show_http_info = true,
    show_headers = true,
    show_statistics = false,
    formatters = {
      json = "jq",
      html = function(body)
        return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
      end
    },
  },
  jump_to_request = false,
  env_file = '.env',
  custom_dynamic_variables = {},
  yank_dry_run = true,
  search_back = true,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "http",
  callback = function()
    local buf = tonumber(vim.fn.expand("<abuf>"), 10)
    vim.keymap.set("n", "<Space>,", function()
      rest_nvim.run()
    end, { noremap = true, buffer = buf })

    vim.keymap.set("n", "<Space>.", function()
      rest_nvim.last()
    end, { noremap = true, buffer = buf })

    vim.keymap.set("n", "<Space>p", function()
      rest_nvim.run(true)
    end, { noremap = true, buffer = buf })
  end,
})
