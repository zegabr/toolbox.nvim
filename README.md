# toolbox.nvim
Handful abstractions for intermediate/advanced vim functionalities like [using macros on multiple lines or on quickfix list entries](https://www.youtube.com/watch?v=KlNzYMLK8N4)
<!---
# Sneak peak
# TODO: add video showing how to use search replace and a multiline macro
-->

# How to install
You can install using your favorite plugin manager, as usual. Here is the way to install with [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
    {
        'zegabr/toolbox.nvim',
        config = function()
            -- optional mappings
            vim.keymap.set('n', '<leader><leader>%', ":CopyFilename<CR>",
                { noremap = true, silent = true, desc = 'copy current file name to clipboard' })
            vim.keymap.set('n', '<leader>S', ":SearchReplaceSnippetFile<CR>",
                { noremap = true, silent = true, desc = 'global replace snippet normal mode' })
            vim.keymap.set("x", "<leader>S", ":SearchReplaceSnippetRange<CR>",
                { desc = 'global replace snippet visual mode' })
            vim.keymap.set("x", "<leader>m", ":MultiLineMacro ", { desc = 'run macro per line on visual mode' })
        end
    },
```

# Exposed neovim functions

Simply put, instead of running `:cdo execute "norm @q` for using the macro (in this case, stored on the register `q`) on all entries of quickfix list, you can use `:CdoMacro q`.


| Command                             | Action                                                                                                                                                                                                                                        |
|-------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `:CdoMacro <macro char>`            | Run macro on every entry in the quickfix list                                                                                                                                                                                                 |
| `:CfdoMacro <macro char>`           | Run macro on every file in quickfix list                                                                                                                                                                                                      |
| `:MultiLineMacro <macro char>`      | Run macro on every line selected on visual mode                                                                                                                                                                                               |
| `:CopyFilename`                     | Copy current buffer filename to the clipboard                                                                                                                                                                                                 |
| `:SearchReplaceSnippetFile`         | Writes the search and replace command `:%s//gIc` with the cursor between the slashes, so you only need to write `search pattern`+`/`+`replace pattern`+`<CR>` to start interacting with the search and replace builtin menu                   |
| `:SearchReplaceSnippetRange`        | Same as above, but for visual mode selections                                                                                                                                                                                                 |
| `:DeleteLinesWithPattern <pattern>` | Deletes every line that has given pattern                                                                                                                                                                                                     |
| `:GlobalMacroSnippet <macro char>`  | Writes the global macro executor command `:g//norm @<char> update` with the cursor between the slashes, so you only need to write the pattern and press enter                                                                                 |

# How to contribute

Simply open a PR or issue with any useful command you think will be a good addition to the toolbox and I'll think about it. I'll probably accept any abstractions for general text editing (or coding) operations that are hard to remember how to use on vim (due to the size/complexity of the operation) and are useful (this is obviously a subjective topic).
