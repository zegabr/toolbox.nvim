# toolbox.nvim
Handful abstractions for intermediate/advanced vim functionalities like [using macros on multiple lines or on quickfix list entries](https://www.youtube.com/watch?v=KlNzYMLK8N4)

# How to install
You can install using your favorite plugin manager, as usual. Here is the way to install with [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
    {
        'zegabr/toolbox.nvim',
        config = function()
            -- required
            require('toolbox')

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

# Exposed vim functions (TODO: add usage example)
- CdoMacro &lt;macro char&gt;
- CfdoMacro &lt;macro char&gt;
- MultiLineMacro &lt;macro char&gt;
- CopyFilename
- SearchReplaceSnippetFile
- SearchReplaceSnippetRange
