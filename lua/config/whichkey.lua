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

wk.register({
  ["<leader>"] = {
    n = {
      name = "+navigation",
      w = { "<cmd>NvimTreeResize +10<cr>", "Increase Size" },
      n = { "<cmd>NvimTreeResize -10<cr>", "Decrease Size" },
	  f = { "<cmd>NvimTreeFocus<cr>", "Full Screen Explore"},
    },
    t = {
      name = "+terminal",
      s = { "<cmd>ToggleTerm size=15 dir=$PWD direction=horizontal <cr>", "small" },
      m = { "<cmd>ToggleTerm size=20 dir=$PWD direction=horizontal <cr>", "medium" },
      f = { "<cmd>ToggleTerm <cr>", "floating" },
      g = { ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", "live_grep"}
    },
    T = {
	name = "+Tabs",
	n = { "<cmd>BufferLineCycleNext <cr>", "next"},
	p = { "<cms>BufferLineCyclePrev <cr>", "previous"}
    }
  },
})
