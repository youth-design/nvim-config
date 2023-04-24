local plugins = {
    -- Тема
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("plugins.configs.catppuccin")
        end,
    },

    -- Управление вкладками буфера
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("plugins.configs.bufferline")
        end,
    },

    -- Навигация по файлам
    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            return require "plugins.opts.nvim-tree"
        end,
        config = function()
            require("plugins.configs.nvim-tree")
        end,
    },
    { "nvim-tree/nvim-web-devicons" },

    -- Автокомплит и подсветка синтаксиса
    {
        "neoclide/coc.nvim",
        branch = "release",
        config = function()
            require("plugins.configs.coc")
        end,
    },

    -- Telescope - Поиск по проекту
    {
        "nvim-lua/plenary.nvim"
    },
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("plugins.configs.telescope")
        end,
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("plugins.configs.lualine")
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        branch = "release",
        config = function()
            require("plugins.configs.gitsigns")
        end,
    }
}

return plugins
