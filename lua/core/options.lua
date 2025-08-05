-- core/options.lua: Core settings and UI
local o = vim.opt

-- file
o.backup      = false
o.writebackup = false
o.swapfile    = false

-- theme
o.background  = "dark"
if vim.fn.has("termguicolors") == 1 then o.termguicolors = true end

-- editor UI
o.number       = true
o.relativenumber = true
o.showcmd      = true
o.showmatch    = true
o.wildmenu     = true
o.title        = true
o.ruler        = true

-- indentation
o.tabstop      = 4
o.shiftwidth   = 4
o.expandtab    = true
o.smartindent  = true
o.autoindent   = true

-- search
o.ignorecase   = true
o.smartcase    = true
o.incsearch    = true
o.hlsearch     = true

-- other
o.scrolloff    = 5
o.mouse        = "a"
o.clipboard    = "unnamedplus"
o.backspace    = { "indent", "eol", "start" }

-- performance
o.lazyredraw   = true
o.updatetime  = 100
o.timeoutlen  = 300
o.ttimeoutlen = 50

