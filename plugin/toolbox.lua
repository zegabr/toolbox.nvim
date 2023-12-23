require('toolbox')
vim.cmd([[command! -nargs=1 CdoMacro lua CdoMacro(<f-args>)]])
vim.cmd([[command! -nargs=1 CfdoMacro lua CfdoMacro(<f-args>)]])
vim.cmd([[command! -range -nargs=1 MultiLineMacro lua MultiLineMacro(<f-args>)]])
