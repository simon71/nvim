local wk = require("which-key")
local map = vim.api.nvim_set_keymap

wk.setup {
	window = {
        border = "none", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        winblend = 0,
    },
}

wk.add({
	{ "<leader>n", group = "Navigation"},
	{ "<leader>ni", "<cmd>NvimTreeResize +10<cr>", desc = "Increase Size" },
	{ "<leader>nd" , "<cmd>NvimTreeResize -10<cr>", desc = "Decrease Size" },
	{ "<leader>nf", "<cmd>NvimTreeFocus<cr>", desc = "Full Screen Explore"},
	{ "<leader>t" , group = "Terminal"},
	{ "<leader>ts", "<cmd>ToggleTerm size=15 dir=$PWD direction=horizontal <cr>", desc = "small" },
	{ "<leader>tm", "<cmd>ToggleTerm size=20 dir=$PWD direction=horizontal <cr>", desc = "medium" },
	{ "<leader>tf", "<cmd>ToggleTerm <cr>", desc = "floating" },
	{ "<leader>tg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "live_grep" },
	{ "<leader>T", group = "Tabs"},
	{ "<leader>Tn", "<cmd>BufferLineCycleNext <cr>", desc = "next"},
	{ "<leader>Tp", "<cms>BufferLineCyclePrev <cr>", desc = "previous"},
})


--   ["<leader>"] = {
--     n = {
--       name = "+navigation",
--       i = { "<cmd>NvimTreeResize +10<cr>", "Increase Size" },
--       d = { "<cmd>NvimTreeResize -10<cr>", "Decrease Size" },
-- 	  f = { "<cmd>NvimTreeFocus<cr>", "Full Screen Explore"},
--     },
--     t = {
--       name = "+terminal",
--       s = { "<cmd>ToggleTerm size=15 dir=$PWD direction=horizontal <cr>", "small" },
--       m = { "<cmd>ToggleTerm size=20 dir=$PWD direction=horizontal <cr>", "medium" },
--       f = { "<cmd>ToggleTerm <cr>", "floating" },
--       g = { ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", "live_grep"}
--     },
--     T = {
-- 	name = "+Tabs",
-- 	n = { "<cmd>BufferLineCycleNext <cr>", "next"},
-- 	p = { "<cms>BufferLineCyclePrev <cr>", "previous"}
--     }
--   },
