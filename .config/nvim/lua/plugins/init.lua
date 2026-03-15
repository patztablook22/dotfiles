return {
    -- other plugins
    -- { "joshdick/onedark.vim" },
    { "neoclide/coc.nvim", branch = "release" },
    { "chrisbra/csv.vim" },
    { "vim-airline/vim-airline" },
    { "junegunn/fzf", build = "./install --all" },
    { "junegunn/fzf.vim" },
    { "preservim/nerdcommenter" },
    { "cdelledonne/vim-cmake" },

    {
        "lervag/vimtex",
        lazy = false, -- load immediately for tex files
        init = function()
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_quickfix_mode = 0
        end
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,  -- load immediately on startup
        config = function()
            local ok, tsconfigs = pcall(require, "nvim-treesitter.configs")
            if not ok then return end

            tsconfigs.setup({
                highlight = { enable = true },
                indent = { enable = true }, -- needed for ibl scope and auto-indent
            })
        end,
    },

    { 
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup({
                indent = {
                    char = "▏",       -- character for indentation
                    tab_char = "▏",   -- optional if you use tabs
                },
                scope = {
                    enabled = true,         -- highlight current scope
                    show_start = true,      -- highlight the first line of the scope
                    show_end = true,        -- highlight the last line of the scope
                    highlight = "CursorColumn", -- which highlight group to use
                },
                exclude = {
                    filetypes = { "help", "packer" }, -- optional: skip these filetypes
                    buftypes = { "terminal" },
                },
            })
        end,
    },

    {
        "github/copilot.vim",
        config = function()
            vim.g.copilot_no_tab_map = true
            vim.api.nvim_set_keymap(
                "i",
                "<C-J>",
                'copilot#Accept("")',
                { expr = true, silent = true }
            )

            vim.api.nvim_set_keymap(
                "i",
                "<C-K>",
                'copilot#Next()',
                { expr = true, silent = true }
            )
            vim.api.nvim_set_keymap(
                "i",
                "<C-H>",
                'copilot#Previous()',
                { expr = true, silent = true }
            )
        end,
    },

    {
        "goolord/alpha-nvim",
        -- dependencies = { 'nvim-mini/mini.icons' },
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local startify = require("alpha.themes.startify")
            -- available: devicons, mini, default is mini
            -- if provider not loaded and enabled is true, it will try to use another provider
            startify.file_icons.provider = "devicons"
            require("alpha").setup(
                startify.config
            )
        end,
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    }
}
