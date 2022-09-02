local fileHasChangedGroup = vim.api.nvim_create_augroup("FileHasChanged", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
	pattern = "*",
	command = "checktime",
	group = fileHasChangedGroup,
})
