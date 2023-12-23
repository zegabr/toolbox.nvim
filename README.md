# toolbox.nvim
Handful abstractions for intermediate/advanced vim functionalities like [using macros on multiple lines or on quickfix list entries](https://www.youtube.com/watch?v=KlNzYMLK8N4)

# How to install
You can install using your favorite plugin manager, as usual. Here is the way to install with [lazy.nvim](https://github.com/folke/lazy.nvim):
```lua
    {
        'zegabr/toolbox.nvim',
        config = function() -- (optional) this will run after loading the plugin
            vim.keymap.set('n', '<leader><leader>%', require('toolbox').copy_filename,
                { noremap = true, silent = true, desc = 'copy current file name to clipboard' })
            vim.keymap.set("x", "<leader>m", ":MultiLineMacro ", { desc = 'prepare command for running macro per line selected' })
        end
    },
```

# Exposed vim functions (TODO: add usage example)
- CdoMacro &lt;macro char&gt; | require('toolbox').cdo_macro('&lt;macro char&gt;')
- CfdoMacro &lt;macro char&gt;| require('toolbox').cfdo_macro('&lt;macro char&gt;')
- MultiLineMacro &lt;macro char&gt;| require('toolbox').multi_line_macro('&lt;macro char&gt;')
- CopyFilename | require('toolbox').copy_filename()
