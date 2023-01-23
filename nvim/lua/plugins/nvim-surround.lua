-----------------------------------------------------------
-- Nvim Surround configuration file
-----------------------------------------------------------

-- Plugin: nvim-surround
-- url: https://github.com/kylechui/nvim-surround

local status_ok, nvim_surround = pcall(require, "nvim-surround")
if not status_ok then
	return
end

-- Call setup:
-- Each of these are documented in `:help nvim-surround`
nvim_surround.setup({})
