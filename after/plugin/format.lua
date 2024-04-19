require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    c = { "astyle" },
    cpp  = { { "astyle", "clangformat" } },
    cc = { "astyle" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1500,
    lsp_fallback = true,
  },
  formatters = {
    astyle = {
      command = "astyle",
      args = "--style=kr --indent=spaces=2 --min-conditional-indent=2 --max-instatement-indent=40 --pad-header --unpad-paren --add-brackets --add-one-line-brackets --keep-one-line-statements --convert-tabs --align-pointer=name"
    }
  }
})
