-- encoding
vim.o.encoding = "utf-8"
vim.scriptencoding = "utf-8"

-- visual
vim.o.ambiwidth = "double"
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

vim.o.matchtime = 1
vim.o.visualbell = true
vim.o.number = true
vim.o.showmatch = true
vim.o.emoji = true
vim.wo.wrap = false
-- vim.o.cursorline = true
-- vim.o.relativenumber = true
-- vim.o.termguicolors = true

-- search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true

-- backup
vim.o.backup = false
vim.o.swapfile = false

-- disable netrw
vim.api.nvim_set_var("loaded_netrw", 1)
vim.api.nvim_set_var("loaded_netrwPlugin", 1)

-- keymappings

-- Ctrl-S to save the current file
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true })

-- Ctrl-W to quit the current window
vim.api.nvim_set_keymap("n", "<C-w>", ":q<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-w>", "<Esc>:q<CR>", { noremap = true })

-- Shift-U to redo
vim.api.nvim_set_keymap("n", "<S-U>", ":redo<CR>", { noremap = true })

-- disable Ctrl-Z
vim.api.nvim_set_keymap("n", "<C-z>", "", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-z>", "", { noremap = true })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "ff", builtin.find_files, {})
vim.keymap.set("n", "fg", builtin.live_grep, {})
vim.keymap.set("n", "fb", builtin.buffers, {})
vim.keymap.set("n", "fh", builtin.help_tags, {})

-- nvim-tree
vim.keymap.set("n", "<C-e>", vim.cmd.NvimTreeToggle)
vim.keymap.set("v", "<C-e>", vim.cmd.NvimTreeToggle)
vim.keymap.set("i", "<C-e>", vim.cmd.NvimTreeToggle)

-- conform
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
