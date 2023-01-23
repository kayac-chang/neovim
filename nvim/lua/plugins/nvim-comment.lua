-----------------------------------------------------------
-- Comment configuration file
-----------------------------------------------------------

-- Plugin: nvim-comment
-- url: https://github.com/terrortylor/nvim-comment

local status_ok, comment = pcall(require, "nvim_comment")
if not status_ok then
	return
end

comment.setup({
	hook = function()
		if string.match(vim.bo.filetype, "react") then
			require("ts_context_commentstring.internal").update_commentstring()
		end
	end,
})
