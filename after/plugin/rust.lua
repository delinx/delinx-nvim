-- weird solution to broken LSP errors / rainbow brackets, seems to work

function rustFormat()
    vim.cmd(":TSDisable rainbow")
end

function rustFormatFix()
    vim.cmd(":TSEnable rainbow")
    vim.cmd("silent! !rustfmt +nightly %")
    vim.cmd(":e!")
end

vim.cmd("autocmd BufWritePre *.rs lua rustFormat()")
vim.cmd("autocmd BufWritePost *.rs lua rustFormatFix()")
