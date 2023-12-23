return {
    -- Runs defined macro into all entries of quickfixlist
    cdo_macro = function(char)
        -- Build the command string
        local command = string.format(':cdo execute "norm @%s" | update', char)
        -- Execute the command in Neovim
        vim.cmd(command)
    end,

    -- Runs defined macro into all files of quickfixlist
    cfdo_macro = function(char)
        -- Build the command string
        local command = string.format(':cfdo execute "norm @%s" | update', char)
        -- Execute the command in Neovim
        vim.cmd(command)
    end,

    -- Runs defined macro into all selected lines
    multi_line_macro = function(char)
        -- Build the command string
        local command = string.format("'<,'>:norm @%s", char)
        -- Execute the command in Neovim
        vim.cmd(command)
    end,

    copy_filename = function()
        vim.cmd([[:let @+ = fnamemodify(resolve(expand('%:p')), ':~:.')]])
    end,
}
