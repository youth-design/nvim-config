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

    -- Подсветка и автокомплит
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate", -- :MasonUpdate updates registry contents
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
        end
    },

    -- Оборачивает в скобки
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

    -- Автозакрытие скобок
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup {
                map_cr = false,
            }
        end
    },

    -- statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("plugins.configs.lualine")
        end,
    },

    -- интеграция с git
    {
        "lewis6991/gitsigns.nvim",
        branch = "release",
        config = function()
            require("plugins.configs.gitsigns")
        end,
    },
}

return plugins
