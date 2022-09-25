local options = {
    termguicolors = true,
    shiftwidth = 8,
    wrap = false,
    tabstop = 8,
    number = true,
    cursorline = true,
    smartindent = true,
    fileencoding = 'utf-8',
    completeopt = {'menu', 'menuone', 'noselect'},
    expandtab = true,
    autoindent = true,
    clipboard = "unnamedplus",
    mouse = "a"
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

