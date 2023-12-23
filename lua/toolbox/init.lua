return {
    -- Runs defined macro into all entries of quickfixlist
    CdoMacro = function(char)
        -- Build the command string
        local command = string.format(':cdo execute "norm @%s" | update', char)
        -- Execute the command in Neovim
        vim.cmd(command)
    end,

    -- Runs defined macro into all files of quickfixlist
    CfdoMacro = function(char)
        -- Build the command string
        local command = string.format(':cfdo execute "norm @%s" | update', char)
        -- Execute the command in Neovim
        vim.cmd(command)
    end,

    -- Runs defined macro into all selected lines
    MultiLineMacro = function(char)
        -- Build the command string
        local command = string.format("'<,'>:norm @%s", char)
        -- Execute the command in Neovim
        vim.cmd(command)
    end,

    CopyFilename = function()
        vim.cmd([[:let @+ = fnamemodify(resolve(expand('%:p')), ':~:.')]])
    end,
}
