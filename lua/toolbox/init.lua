return {
    -- Runs defined macro into all entries of quickfixlist
    cdo_macro = function(char)
        local command = string.format(':cdo execute "norm @%s" | update', char)
        vim.cmd(command)
    end,

    -- Runs defined macro into all files of quickfixlist
    cfdo_macro = function(char)
        local command = string.format(':cfdo execute "norm @%s" | update', char)
        vim.cmd(command)
    end,

    -- Runs defined macro into all selected lines
    multi_line_macro = function(char)
        local command = string.format("'<,'>:norm @%s", char)
        vim.cmd(command)
    end,

    -- Copies current buffer filename to clipboard register
    copy_filename = function()
        vim.cmd([[:let @+ = fnamemodify(resolve(expand('%:p')), ':~:.')]])
    end,

    -- Writes the search replace snippet for you
    search_replace_snippet_on_file = function()
        vim.fn.feedkeys(':%s//gIc', 'n')
        vim.api.nvim_input('<Left><Left><Left><Left>')
    end,

    -- Writes the visual selection search replace snippet for you
    search_replace_snippet_on_range = function()
        vim.api.nvim_input(":'<LT>,'>s//gIc<Left><Left><Left><Left>")
    end,

    -- Deletes all lines containing given pattern
    delete_lines_with_pattern = function(pattern)
        local command = string.format('g/%s/d', pattern)
        vim.cmd(command)
    end
    -- TODO: add more :g commands
}
