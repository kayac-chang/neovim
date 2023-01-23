-----------------------------------------------------------
-- Symbols Outline configuration file
-----------------------------------------------------------

-- Plugin: symbols-outline
-- url: https://github.com/simrat39/symbols-outline.nvim

local status_ok, symbols_outline = pcall(require, "symbols-outline")
if not status_ok then
	return
end

require("symbols-outline").setup()
