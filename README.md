# toolbox.nvim
Handful abstractions for intermediate/advanced vim functionalities like [using macros on multiple lines or on quickfix list entries](https://www.youtube.com/watch?v=KlNzYMLK8N4)

# How to install
You can install using your favorite plugin manager, as usual. Here is the way to install with [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
    {
        'zegabr/toolbox.nvim',
        config = function()
            -- optional
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

| Command   | Action  |
|:---|:---|
| `:CdoMacro &lt;macro char&gt;` | Run macro on every entry in the quickfix list |
| `:CfdoMacro &lt;macro char&gt;` | Run macro on every file in quickfix list |
| `:MultiLineMacro &lt;macro char&gt;` | Run macro on every line selected on visual mode |
| `:CopyFilename` | Copy current buffer filename to the clipboard |
| `:SearchReplaceSnippetFile` | Writes the search and replace command `:%s//gIc` with the cursor between the slashes, so you only need to write `search pattern`+`/`+`replace pattern` |
| `:SearchReplaceSnippetRange` | Same as above, but for visual mode selections |

# How to contribute

Simply open a PR or issue with any useful command you think will be a good adition to the toolbox and I'll think about it. I'll probably accept any abstractions for general text editing (or coding) operations that are hard to remember how to use on vim (due to the size/complexity of the operation) and are useful (this is obviously a subjective topic).
