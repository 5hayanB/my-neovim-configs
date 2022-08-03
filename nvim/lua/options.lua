local options = {
    termguicolors = true,
    shiftwidth = 4,
    wrap = false,
    tabstop = 4,
    number = true,
    cursorline = true,
    smartindent = true,
    fileencoding = 'utf-8',
    completeopt = {'menu', 'menuone', 'noselect'},
    expandtab = true,
    autoindent = true,
    clipboard = "unnamedplus"
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
