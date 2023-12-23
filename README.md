# toolbox.nvim
Handful abstractions for intermediate/advanced vim functionalities

# How to install
You can install using your favorite plugin manager, as usual. Here is the way to install with lazy.nvim:
```lua
    {
        'zegabr/toolbox.nvim',
        config = function() -- (optional) this will run after loading the plugin
            vim.keymap.set('n', '<leader><leader>%', require('toolbox').copy_filename,
                { noremap = true, silent = true, desc = 'copy current file name to clipboard' })
            vim.keymap.set("x", "<leader>m", ":MultiLineMacro ", { desc = 'run macro per line selected' })
        end
    },
```

# Exposed vim functions
- CdoMacro | require('toolbox').cdo_macro
- CfdoMacro | require('toolbox').cfdo_macro
- MultiLineMacro | require('toolbox').multi_line_macro
- CopyFilename | require('toolbox').copy_filename
