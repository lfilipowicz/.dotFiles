local nnoremap = require("bizon.keymap").nnoremap
local inoremap = require("bizon.keymap").inoremap
local vnoremap = require("bizon.keymap").vnoremap

local opts = { noremap = true, silent = true }

-- NETRW
nnoremap("<leader>pv", "<cmd>Ex<CR>")

--- telescope
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fgs", "<cmd>lua require('telescope.builtin').git_status()<cr>")
nnoremap("<leader>fgb", "<cmd>lua require('telescope.builtin').git_branches()<cr>")
nnoremap("<leader>fp", "<cmd>Telescope projects<cr>")

-- MOVE TEXT UP AND DOWN
nnoremap("<S-UP>", ":m .-2<CR>==")
nnoremap("<S-DOWN>", ":m .+1<CR>==")

-- RESIZE WINDOW

nnoremap("<A-UP>", ":resize -2<CR>", opts)
nnoremap("<A-DOWN>", ":resize +2<CR>", opts)
nnoremap("<A-LEFT>", ":vertical resize -2<CR>", opts)
nnoremap("<A-RIGHT>", ":vertical resize +2<CR>", opts)

-- ESCAPE FASTER
inoremap("jj", "<ESC>", opts)

-- NVTree
nnoremap("<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- BUFFER SWITCHING
nnoremap("<S-l>", "<cmd>bnext<cr>", opts)
nnoremap("<S-h>", "<cmd>bprevious<cr>", opts)

-- LSP

nnoremap(
  "<leader>lf",
  "<cmd>lua vim.lsp.buf.format({async=true})<cr>",
  -- "<cmd>lua vim.lsp.buf.format({async=true, filter = function(client) return client.name ~= 'tsserver' end})<cr>",
  opts
)
nnoremap("<leader>li", "<cmd>LspInfo<cr>", opts)
nnoremap("<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
nnoremap("<leader>la", "<cmd>Lspsaga code_action<CR>", opts)
nnoremap("<leader>lj", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
nnoremap("<leader>lk", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
nnoremap("<leader>lr", "<cmd>Lspsaga rename<CR>", opts)

-- LSP SAGA
vnoremap("<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", opts)
nnoremap("K", "<cmd>Lspsaga hover_doc<CR>", opts)
nnoremap("gr", "<cmd>Lspsaga lsp_finder<CR>", opts)