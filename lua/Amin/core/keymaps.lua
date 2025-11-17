-- locals
-- local function map_opts(desc, silent, noremap)
-- 	local opts = {}
--
-- 	if desc then
-- 		opts.desc = desc
-- 	end
--
-- 	if silent ~= nil then
-- 		opts.silent = silent
-- 	end
--
-- 	if noremap ~= nil then
-- 		opts.noremap = noremap
-- 	end
--
-- 	return opts
-- end

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- general keymaps
-- save with command + s and go back to normal mode
-- vim.keymap.set({ "n", "i" }, "<D-s>", "<ESC>:w<CR>", { desc = "save with cmd + s and go back to normal mode" })

--HACK: most of keymaps are moved to whichkey.lua

-- tabs
-- vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", map_opts("Open new tab"))
-- vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", map_opts("Close current tab"))
-- vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", map_opts("Go to next tab"))
-- vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", map_opts("Go to previous tab"))
-- vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", map_opts("Open current tab in new tab"))

-- buffers
-- vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", map_opts("Go to next buffer", true))
-- vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", map_opts("Go to previous buffer", true))

-- windows
-- vim.keymap.set("n", "<leader>wr", "<C-w>v", map_opts("Open new window vertically", true))
-- vim.keymap.set("n", "<leader>wl", "<C-w>s", map_opts("Open new window horizontally", true))
-- vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", map_opts("Close current window", true))
-- vim.keymap.set("n", "<leader>we", "<C-w>=", map_opts("Make windows equal size"))
-- vim.keymap.set("n", "<leader>w=", "<cmd>vertical resize +5<CR>", map_opts("Increase window width by 5px", true))
-- vim.keymap.set("n", "<leader>w-", "<cmd>vertical resize -5<CR>", map_opts("Decrease window width by 5px", true))
-- vim.keymap.set("n", "<leader>w+", "<cmd>resize +5<CR>", map_opts("Increase pane height by 5px", true))
-- vim.keymap.set("n", "<leader>w_", "<cmd>resize -5<CR>", map_opts("Decrease pane height by 5px", true))

-- lsp
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}

-- editor
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", map_opts("Moves lines down in visual selection"))
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", map_opts("Moves lines up in visual selection"))
-- vim.keymap.set("n", "n", "nzzzv", map_opts("Center cursor on move in search", true, true))
-- vim.keymap.set("n", "N", "Nzzzv", map_opts("Center cursor on move in search", true, true))
-- vim.keymap.set("v", "<", "<gv", map_opts("Increase indent on visual mode", true, true))
-- vim.keymap.set("v", ">", ">gv", map_opts("Decrease indent on visual mode", true, true))
-- vim.keymap.set("n", "Q", "<nop>", map_opts("Disable Q as it throws error", true, true))
-- vim.keymap.set("n", "<Esc>", ":nohl<CR>", map_opts("Clear search highlights", true, true))
-- vim.keymap.set("x", "<leader>p", [["_dP]],map_opts("Paste whithout yanking"))
-- vim.keymap.set({ "n", "v" }, "<leader>dd", [["_d]], map_opts("Delete whithout copy"))
-- vim.keymap.set("v", "p", '"_dp', map_opts("Remember yanked after paste on visual mode", true, true))
-- vim.keymap.set("n", "x", '"_x', map_opts("Prevents deleted charater from copying to clipboard"))
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>s",
-- 	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
-- 	map_opts("Replace word under cursor is on globally")
-- )
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", map_opts("Make current file executable"))
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- copy filepath to the clipboard
-- vim.keymap.set("n", "<leader>fp", function()
-- 	local filePath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
-- 	vim.fn.setreg("+", filePath) -- Copy the file path to the clipboard register
-- 	print("File path copied to clipboard: " .. filePath) -- Optional: print message to confirm
-- end, { desc = "Copy file path to clipboard" })

-- markdown
-- vim.keymap.set("n", "<C-s>", ":MarkdownPreviewToggle<CR>", map_opts("Open markdown preview", true, true))

-- noice
-- vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", map_opts("Dismiss notification", true, true))

-- whichkey
-- vim.keymap.set("n", "<leader>?", ":WhichKey<CR>", map_opts("Open whichkey", true, true))

-- telescope
-- vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", map_opts("Open telescope live grep", true, true))
-- vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", map_opts("Open telescope buffers", true, true))
-- vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", map_opts("Open telescope help tags", true, true))
-- vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics<CR>", map_opts("Open telescope diagnostics", true, true))
-- vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", map_opts("Open telescope find files", true, true))
-- vim.keymap.set("n", "<leader>ft", function()
-- 	require("snacks").picker.todo_comments()
-- end, map_opts("Open telescope todo", true, true))
-- vim.keymap.set("n", "<leader>fT", function()
-- 	require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
-- end, map_opts("Open telescope specific todo", true, true))
--
-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<Leader>fx",
-- 	[[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
-- 	map_opts("Open telescope recent files", true, true)
-- )

-- snacks
-- vim.keymap.set("n", "<leader>lg", function()
-- 	require("snacks").lazygit()
-- end, map_opts("Open lazygit", true, true))
-- vim.keymap.set("n", "<leader>ll", function()
-- 	require("snacks").lazygit.log()
-- end, map_opts("Open lazygit Logs", true, true))
-- vim.keymap.set("n", "<leader>fN", function()
-- 	require("snacks").rename.rename_file()
-- end, map_opts("Fast rename current file", true, true))
-- vim.keymaps.set("n", "<leader>ff", function()
-- 	require("snacks").find_files()
-- end, map_opts("Open telescope find files", true, true))
-- vim.keymaps.set("n", "<leader>fc", function()
-- 	require("snacks").picker.files({ cwd = vim.fn.stdpath("config") })
-- end, map_opts("Open Picker Config FIles", true, true))
