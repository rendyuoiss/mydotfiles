require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.spectre"
require "user.whichkey"
require "user.autocommands"
require "user.winbar"
require "user.gps"
require "user.icons"
require "user.functions"
-- require "user.evil_lualine"
require "user.tabnine"
require "user.navic"
require "user.contexmenu1"

-- vscode
if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
end

-- onedark
--require('onedark').setup {
  --style = 'warmer'
--}
--require('onedark').load()

local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- vim.keymap.set("n", "gd", rt.definition, { buffer = bufnr })
      -- Code action groups
    -- vim.keymap.set("n", "<Leader>d", rt.code_action_group.code_action_group, { buffer = bufnr }) 
    end,
},
})
