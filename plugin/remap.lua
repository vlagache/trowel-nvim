local remap = require("trowel.utils").remap

remap('n', '<C-h>', '<C-w><C-h>', 'Move focus to the left window')
remap('n', '<C-l>', '<C-w><C-l>', 'Move focus to the right window')
remap('n', '<C-j>', '<C-w><C-j>', 'Move focus to the lower window')
remap('n', '<C-k>', '<C-w><C-k>', 'Move focus to the upper window')

remap('n', '<leader>tc', '<CMD>tabclose<CR>', 'tab close')
remap('n', '<Esc>', '<CMD>nohlsearch<CR>', 'remove highlight search')
