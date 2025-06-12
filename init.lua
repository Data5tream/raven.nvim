local vim = vim

-- General settings
require("config.settings")

-- Load plugins
require("config.plugins")

-- Load coc config
require("config.coc")

-- Load NERDTree config
require("config.nerdtree")

-- Load lightline config
require("config.lightline")

-- Load treesitter config
require("config.treesitter")

-- Load indent-blankline config
require("config.indent-blankline")

-- Load rainbow delimiters config
require("config.rainbow")

-- Load user functions
require("functions")

-- Load keybinds
require("custom-keybinds")
