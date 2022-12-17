vim.cmd [[highlight IndentBlanklineIndent1 guifg=#333232 gui=nocombine]]

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
require('indent_blankline').setup {
    char = '│',
    show_trailing_blankline_indent = false,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}
