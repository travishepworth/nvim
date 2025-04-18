-- Setting up tab spacing and settings
vim.cmd("set expandtab")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.o.background = "dark" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])

-- Disable Mouse
vim.cmd("set mouse=")

-- Start up neovim with line numbers / <leader>rn for relative numbers
vim.cmd("set number")

-- Allow multiple buffers at once
vim.cmd("set hidden")

-- Enable syntax
vim.cmd("syntax on")

-- Disable wrapping
vim.opt.wrap = false

-- Required for neovim
vim.opt.termguicolors = true

-- Searching settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show sign column to prevent text shifting
vim.opt.signcolumn = "yes"

-- Backspace
vim.opt.backspace = "indent,eol,start"

-- Default register to "+"
vim.opt.clipboard:append("unnamedplus") -- System clipboard

-- Keyboard splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Enable indent based folding
vim.wo.foldmethod = "indent"
vim.wo.foldlevel = 99

vim.cmd([[highlight String cterm=none gui=none]])


vim.diagnostic.config({
    virtual_text = true,      -- Show diagnostics inline
    signs = true,             -- Show signs in the gutter
    underline = true,         -- Underline problematic lines
    update_in_insert = false, -- Update diagnostics only after leaving insert mode
})
