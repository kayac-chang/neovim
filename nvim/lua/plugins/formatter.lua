-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: formatter
-- url: https://github.com/mhartington/formatter.nvim

-- Keybindings are defined in `core/keymaps.lua`:

local status_ok, formatter = pcall(require, 'formatter')
if not status_ok then
  return
end

local util = require("formatter.util")

-- Call setup:
formatter.setup {
  filetype = {

    -- Web
    html = {
      require("formatter.defaults.prettier")
    },
    css = {
      require("formatter.defaults.prettier")
    },
    javascript = {
      require("formatter.defaults.prettier")
    },
    javascriptreact = {
      require("formatter.defaults.prettier")
    },
    typescript = {
      require("formatter.defaults.prettier")
    },
    typescriptreact = {
      require("formatter.defaults.prettier")
    },

    -- Rust
    rust = {
      require("formatter.filetypes.rust").rustfmt
    },

    -- Python
    python = {
      require("formatter.filetypes.python").autopep8
    },

    -- Lua
    lua = {
      require("formatter.filetypes.lua").luafmt
    },

    -- Markdown
    markdown = {
      require("formatter.defaults.prettier")
    }
  }
}

-- Format on Save
vim.cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])

