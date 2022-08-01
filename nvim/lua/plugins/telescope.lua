-----------------------------------------------------------
-- File manager configuration file
-----------------------------------------------------------

-- Plugin: telescope
-- url: https://github.com/nvim-telescope/telescope.nvim

-- Keybindings are defined in `core/keymaps.lua`:

local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

-- Call setup:
-- Each of these are documented in `:help telescope`
telescope.setup {
}
