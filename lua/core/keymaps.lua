vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({'n','v'}, '<Space>', '<Nop>', {silent=true})

local opts = {noremap = true, silent = true}

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

vim.keymap.set('n','x','"_x', opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')


-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-i>', '<C-i>', opts) -- to restore jump forward
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

-- Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- close current split window


-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

--Change go to start and end of line to H and L


-- Map Capital H to go to start of line (0)
vim.keymap.set('n', 'H', '0', opts)
-- Map Capital L to go to end of line ($)
vim.keymap.set('n', 'L', '$', opts)

-- Map 0 to perform the original H (High/Top of screen)
vim.keymap.set('n', '0', 'H', opts)
-- Map $ to perform the original L (Low/Bottom of screen)
vim.keymap.set('n', '$', 'L', opts)

--Open neotree with \
vim.keymap.set('n','\\',':Neotree <CR>')
