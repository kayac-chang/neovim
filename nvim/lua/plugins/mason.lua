-----------------------------------------------------------
-- Neovim Package Manager configuration file
-----------------------------------------------------------

-- Plugin: mason.nvim
-- url: https://github.com/williamboman/mason.nvim

local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

mason.setup()
