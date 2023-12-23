local toolbox = require('toolbox')
vim.cmd([[command! -nargs=1 CdoMacro lua require('toolbox').cdo_macro(<f-args>)]])
vim.cmd([[command! -nargs=1 CfdoMacro lua require('toolbox').cfdo_macro(<f-args>)]])
vim.cmd([[command! -range -nargs=1 MultiLineMacro lua require('toolbox').multi_line_macro(<f-args>)]])
vim.cmd([[command! CopyFilename lua require('toolbox').copy_filename()]])
vim.cmd([[command! SearchReplaceSnippetFile lua require('toolbox').search_replace_snippet_on_file()]])
vim.cmd([[command! -range SearchReplaceSnippetRange lua require('toolbox').search_replace_snippet_on_range()]])
return toolbox
