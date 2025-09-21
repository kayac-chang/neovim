-----------------------------------------------------------
-- Formatter configuration file
-----------------------------------------------------------

-- Plugin: conform
-- url: https://github.com/stevearc/conform.nvim


local status_ok, conform = pcall(require, 'conform')
if not status_ok then
  return
end

conform.setup({
  formatters_by_ft = {
    -- lua = { "stylua" },
    python = { "isort", "black" },
    typescript = { "prettier", stop_after_first = true },
    typescriptreact = {  "prettier", stop_after_first = true  },
    javascript = { "prettier", stop_after_first = true },
    javascriptreact = { "prettier", stop_after_first = true },
    json = { "prettier", stop_after_first = true },
    css = { "prettier", stop_after_first = true },
    scss = { "prettier", stop_after_first = true },
    html = { "prettier", stop_after_first = true },
    -- ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
  },
  format_on_save = {
    timeout_ms = 10000,
    lsp_format = "fallback",
  },
})
