local options = {
	encoding = "utf-8", 
	fileencoding = "utf-8", 
	tabstop = 4, 
	shiftwidth = 4,
	number = true, 
	showmode = false, 
	cursorline = true, 
	termguicolors = true, 
	clipboard = {"unnamedplus"}, 
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.cmd("let g:denops#deno = '/home/yoshimi/.deno/bin/deno'")
