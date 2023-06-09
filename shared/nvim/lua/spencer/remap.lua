vim.g.mapleader = " "

-- remove higlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

-- keep cursor in middle of page when searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- handle different registers
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- find and replace given word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>re", ":NvimTreeRefresh<CR>")

-- split windows
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current split window

-- buffer navigation
vim.keymap.set("n", "<leader>bo", ":enew<CR>")
vim.keymap.set("n", "<leader><BS>", ":bp <BAR> bd #<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>")
vim.keymap.set("n", "<leader>bl", ":ls<CR>")
vim.keymap.set("n", "<leader>rb", ":edit!<CR>")

-- Change file perms
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Markdown
vim.keymap.set("n", "<leader>md", ":MarkdownPreview<CR>")
