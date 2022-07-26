local options = {
    termguicolors = true,
    completeopt = {'menu', 'menuone', 'noselect'},
    shiftwidth = 4,
}

vim.opt_global.shortmess:remove("F"):append("c")

for k, v in pairs(options) do
    vim.opt[k] = v
end

