-- Material Theme Palenight (lighter variant of the VS Code Material Theme)
return {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.material_style = "palenight"
        require("material").setup({
            disable = {
                background = true, -- transparent, like your old gruvbox setup (kitty bg matches anyway)
            },
            plugins = {
                "gitsigns",
                "indent-blankline",
                "neo-tree",
                "nvim-cmp",
                "nvim-web-devicons",
                "telescope",
            },
            lualine_style = "default",
        })
        vim.o.background = "dark"
        vim.cmd("colorscheme material")
    end,
}
