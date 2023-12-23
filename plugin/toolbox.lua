local toolbox = require('toolbox')
vim.cmd([[command! -nargs=1 CdoMacro lua toolbox.cdo_macro(<f-args>)]])
vim.cmd([[command! -nargs=1 CfdoMacro lua toolbox.cfdo_macro(<f-args>)]])
vim.cmd([[command! -range -nargs=1 MultiLineMacro lua toolbox.multi_line_macro(<f-args>)]])
vim.cmd([[command! CopyFilename lua toolbox.copy_filename()]])
vim.cmd([[command! -range SearchReplaceSnippetRange lua toolbox.search_replace_snippet_on_range()]])
return toolbox
