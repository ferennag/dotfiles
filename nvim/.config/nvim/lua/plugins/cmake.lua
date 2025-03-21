return {
    "Civitasv/cmake-tools.nvim",
    dependencies = {
        "stevearc/overseer.nvim",
    },
    opts = {
        cmake_runner = {
            name = "overseer",
            opts = {
                overseer = {
                    new_task_opts = {
                        strategy = {
                            "toggleterm",
                            direction = "vertical",
                        }
                    }
                }
            }
        }
    },
}
