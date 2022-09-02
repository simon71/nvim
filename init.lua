
require("plugins")
require("config.settings")
require("config.language_server")
require("config.color")
require("config.navigation")
require("config.whichkey")
require("config.autopairs")
require("config.toggleterm")
require("config.treesitter")
require("config.bufferline")
require("config.keybindings")
require("config.ide_general")
require("config.lualine")
require("config.align")
require("config.killersheep")
require("config.telescope")
require("config.cheatsheet")

--[[
TODO:
- Add extra modules to treesitter https://github.com/nvim-treesitter/nvim-treesitter/wiki/Extra-modules-and-plugins
- Add more key bindings to whichkey including
	- open terminal
	- lasy save
	- clear search highlighting
- Look at adding https://github.com/jose-elias-alvarez/null-ls.nvim
--]]
