-- Modern Neovim settings (based on user's vimrc intent)
local opt = vim.opt
local g = vim.g

-- Core UI
opt.number = true                -- Show absolute line numbers
opt.relativenumber = true        -- ...and relative line numbers
opt.cursorline = true            -- Highlight current line
opt.signcolumn = "yes"           -- Prevent UI jump by always showing sign column
opt.termguicolors = true         -- Enable 24-bit color
opt.scrolloff = 6                -- Minimum lines to keep above/below cursor
opt.colorcolumn = "80"           -- Show cutoff line at 80 characters

-- Status & command info
opt.showmode = true              -- Show current mode (normal/insert/etc)
opt.showcmd = true               -- Show partial command in bottom right
opt.ruler = true                 -- Show cursor position in status line

-- Indentation & Tabs
opt.tabstop = 2                  -- Spaces per tab
opt.shiftwidth = 2               -- Indent width
opt.expandtab = true             -- Convert tabs to spaces
opt.smartindent = true           -- Smart auto-indenting
opt.autoindent = true            -- Auto-indent on new line

-- File handling
opt.hidden = true                -- Allow switching buffers without saving
opt.encoding = "utf-8"           -- File encoding
opt.modelines = 0                -- Disable modelines for security
opt.history = 1000               -- Command history

-- Backups and saves
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Search
opt.ignorecase = true            -- Case-insensitive search...
opt.smartcase = true             -- ...unless capital letters are used
opt.hlsearch = false             -- Don't highlight after exiting search
opt.incsearch = true             -- Incremental search
opt.showmatch = true             -- Highlight matching parens/brackets

-- UI Enhancements
opt.mouse = "a"                  -- Enable mouse in all modes
opt.wrap = false                 -- Disable line wrap
opt.clipboard = "unnamedplus"    -- Use system clipboard
opt.wildmenu = true              -- Wildmenu for tab completion
opt.wildmode = { "list", "longest" }

-- Ignore junk files in completion
opt.wildignore:append({
  "*.docx", "*.jpg", "*.png", "*.gif", "*.pdf",
  "*.pyc", "*.exe", "*.flv", "*.img", "*.xlsx",
  "*.mp4", "*.mkv", "*.avi", "*.flac", "*.mp3",
  "*.mov", "*.m4v", "*.m4a", ".jpeg", "*.doc",
  "*.wav"
})

-- Performance tweaks
opt.updatetime = 300             -- Faster completion response
opt.ttimeoutlen = 10             -- Faster key sequence timeout
opt.timeoutlen = 500             -- Mapping sequence time

-- Optional (commented out for now)
-- opt.colorcolumn = "80"
-- opt.cursorcolumn = true

