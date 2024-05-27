local options = {
	encoding = "utf-8", 
	fileencoding = "utf-8", 
	number = true, 
	showmode = false, 
	cursorline = true, 
	termguicolors = true, 
	clipboard = {"unnamedplus"}, 
	shortmess = {"c"}
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.cmd("let g:denops#deno = '/usr/local/bin/deno'")
