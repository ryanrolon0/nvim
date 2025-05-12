vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.mouse="a"
vim.opt.encoding = "utf-8"
vim.opt.clipboard = "unnamedplus"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.swapfile = false

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>')

-- Tab keymaps
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>')
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>')
vim.keymap.set('n', '<leader>tl', ':tabNext<CR>')
vim.keymap.set('n', '<leader>th', ':tabprevious<CR>')

-- Quality of life mappings
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", ":Alpha<CR>", { noremap = true, silent = true })

-- o and O without entering insert mode
vim.keymap.set("n", "o", "o<Esc>", { noremap = true })
vim.keymap.set("n", "O", "O<Esc>", { noremap = true })

--Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
