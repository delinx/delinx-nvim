function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
    vim.api.nvim_set_hl(0, "VirtColumn", { fg = "#1c1c1c", bg = "black" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "TermCursor", { bg = "black", fg = "black" })
    vim.api.nvim_set_hl(0, "CursorLine", { fg = "none", bg = "none" })
    vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "#D79717", bg = "none" })

    vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none", fg = "#98be65" })
    vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none", fg = "#51afef" })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none" ,fg = "#ec5f67" })
end

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = false,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    overrides = {
        SignColumn = { bg = "#ff9900" },
    },
})

ColorMyPencils()
