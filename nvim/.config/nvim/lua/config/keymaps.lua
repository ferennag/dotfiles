vim.keymap.set('n', '<leader>fe', function () vim.cmd[[Neotree toggle reveal]] end, { desc = 'Neotree' })

-- Clear search highlight when pressing Esc
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Easier window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = "Move to the left window" })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = "Move to the right window" })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = "Move to the bottom window" })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = "Move to the top window" })

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>f.', telescope.resume, { desc = 'Telescope resume search' })
vim.keymap.set('n', '<leader>f,', telescope.search_history, { desc = 'Telescope search history' })
vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fr', telescope.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader><leader>', telescope.find_files)
vim.keymap.set('n', '<leader>h', function() vim.cmd [[Telescope helpgrep]] end)
vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope grep' })
vim.keymap.set('n', '<leader>fw', telescope.grep_string, { desc = 'Telescope grep word' })
vim.keymap.set('n', '<leader>fk', telescope.keymaps, { desc = 'Telescope keymaps' })
vim.keymap.set('n', '<leader>fd', telescope.diagnostics, { desc = 'Telescope diagnostics' })
vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>gc', telescope.git_commits, { desc = 'Telescope git commits' })
vim.keymap.set('n', '<leader>gg', function() vim.cmd[[G]] end, { desc = 'GitGutter' })
vim.keymap.set('n', '<leader>gd', function() vim.cmd[[Gdiffsplit]] end, { desc = 'GitGutter' })

vim.keymap.set('n', '<leader>fc', function()
    telescope.colorscheme({ enable_preview = true })
end, {
    desc = 'Telescope colorscheme',
})

vim.keymap.set('n', '<leader>/', function()
    telescope.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = true,
    })
end, { desc = 'Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>fi', function()
    telescope.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Find Neovim config files' })

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Undo Tree' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = "Show diagnostic" })

-- Vim test
vim.keymap.set('n', '<leader>t', function() vim.cmd [[TestNearest]] end, { desc = "Run nearest test" });
vim.keymap.set('n', '<leader>T', function() vim.cmd [[TestFile]] end, { desc = "Run nearest test" });

-- Arrow custom keymaps
vim.keymap.set("n", "H", require("arrow.persist").previous)
vim.keymap.set("n", "L", require("arrow.persist").next)
