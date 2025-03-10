return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        { "3rd/image.nvim", opts = {} }, -- Optional image support in preview window: See `# Preview Mode` for more information
        opts = {
            -- TODO: these config options doesn't seem to work
            filesystem = {
                hijack_netrw_behavior = "open_default",
                filtered_items = {
                    visible = true,
                    hide_hidden = false,
                    hide_dotfiles = false
                }
            }
        },
    }
}
