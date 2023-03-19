vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.colorcolumn = "80"
vim.wo.relativenumber = true

-- <ctrl>s to write file, same as saving
vim.keymap.set('n', '<C-s>', ':w<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Python keybinds

vim.keymap.set('n', '<C-r>', ':below 10 split | term python %<CR>' )

-- C++ keybinds

-- <space>r to build cpp prog. with cmake
vim.keymap.set('n', '<leader>rb', ':below split | term cmake -Bbuild -DCMAKE_BUILD_TYPE=ReleaseM<CR>')
-- <space>rm to make cpp executable
vim.keymap.set('n', '<leader>rm', ':below split | term cd ./build && make<CR>')
-- <space>rr to run .exe file
vim.keymap.set('n', '<leader>rr', ':below split | term cd ./build && ./main<CR>')

-- <space>cr to compile and run standard c++ files
vim.keymap.set('n', '<leader>cr', ':below split | term g++ -o ./main % -Wall && ./main <CR>')
