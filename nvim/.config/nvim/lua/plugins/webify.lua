-- NOTE: This plugin allow you to open the current file on GitHub
return {
    "pabloariasal/webify.nvim",
    keys = {
        { '<leader>ro', '<cmd>OpenFileInRepo<cr>', desc = "Open File in repository" },
        { '<leader>ry', '<cmd>YankFileUrl +<cr>', desc = "Yank File URL" },
    }
}
