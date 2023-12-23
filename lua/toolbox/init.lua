-- Runs defined macro into all entries of quickfixlist
function CdoMacro(char)
    -- Build the command string
    local command = string.format(':cdo execute "norm @%s" | update', char)
    -- Execute the command in Neovim
    vim.cmd(command)
end

-- Runs defined macro into all files of quickfixlist
function CfdoMacro(char)
    -- Build the command string
    local command = string.format(':cfdo execute "norm @%s" | update', char)
    -- Execute the command in Neovim
    vim.cmd(command)
end
