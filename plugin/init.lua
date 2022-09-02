local fileHasChangedGroup = vim.api.nvim_create_augroup("FileHasChanged", { clear = true })

vim.api.nvim_create_autocmd(
	{ "FocusGained", "BufWinEnter", "BufEnter", "CursorHold", "CursorHoldI", "InsertEnter", "InsertLeave" },
	{
		pattern = "*",
		command = "checktime",
		group = fileHasChangedGroup,
	}
)
