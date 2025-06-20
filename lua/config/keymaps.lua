vim.keymap.set('i', 'jj', '<ESC>', { desc = 'The escape key in insert mode' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Move Lines
vim.keymap.set('n', '<A-j>', "<cmd>execute 'move .+' . v:count1<cr>==", { desc = 'Move Down' })
vim.keymap.set('n', '<A-k>', "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = 'Move Up' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
vim.keymap.set('v', '<A-j>', ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = 'Move Down' })
vim.keymap.set('v', '<A-k>', ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = 'Move Up' })

-- tab keymaps
vim.keymap.set('n', '<leader><tab>N', ':tabnew<cr>', { desc = 'New tab' })
vim.keymap.set('n', '<leader><tab>n', ':tabnext<cr>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader><tab>p', ':tabprevious<cr>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader><tab><tab>', ':tabprevious<cr>', { desc = 'Switch to last tab' })

-- Buffer Keymaps
vim.keymap.set('n', '<leader>bd', ':bd<cr>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>b[', ':bprevious<cr>', { desc = 'Switch to previous buffer' })
vim.keymap.set('n', '<leader>b]', ':bnext<cr>', { desc = 'Switch to next buffer' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
