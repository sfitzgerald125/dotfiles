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
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>:NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>re", ":NvimTreeRefresh<CR>")

-- bufferline
vim.keymap.set("n", "<leader><Tab>", ":bnext<CR>")
vim.keymap.set("n", "<leader><S-Tab>", ":bprev<CR>")
vim.keymap.set("n", "<leader><BS>", ":bd<CR>")


-- split windows
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current split window

-- tab navigation
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
