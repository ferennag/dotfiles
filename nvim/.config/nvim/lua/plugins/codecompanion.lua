return {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        { "<leader>cc", "<cmd>CodeCompanionChat<cr>", desc = "Code Companion Chat" },
        { "<leader>cd", "<cmd>CodeCompanion<cr>", desc = "Code Companion Command" },
    },
    opts = {
        action_palette = {
            provider = "telescope", -- Use telescope for the action palette
        },
        strategies = {
            chat = {
                adapter = "anthropic",
                slash_commands = {
                    ["file"] = {
                        opts = {
                            provider = "telescope"
                        }
                    },
                    ["buffer"] = {
                        opts = {
                            provider = "telescope"
                        }
                    }
                }
            },
            inline = {
                adapter = "anthropic"
            },
            command = {
                adapter = "anthropic"
            },
        },
        adapters = {
            anthropic = function()
                return require("codecompanion.adapters").extend("anthropic", {
                    env = {
                        api_key = "ANTHROPIC_API_KEY",
                    },
                })
            end
        }
    }
}
