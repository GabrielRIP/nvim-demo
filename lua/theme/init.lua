-- -- ╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
local colors = require('theme.colors')
-- -- ╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛

local highlights = {
   editor = require('theme.integrations.editor').get(colors),
   syntax = require('theme.integrations.syntax').get(colors),
   treesitter = require('theme.integrations.treesitter').get(colors),
   git_signs = require('theme.integrations.gitsigns').get(colors),
   lsp_native = require('theme.integrations.lsp_native').get(colors),
   barbar = require('theme.integrations.barbar').get(colors),
   nvimtree = require('theme.integrations.nvimtree').get(colors),
   indent = require('theme.integrations.indent_blank').get(colors),
   cmp = require('theme.integrations.cmp').get(colors),
}

for _, element in pairs(highlights) do
   for group, hl in pairs(element) do
      vim.api.nvim_set_hl(0, group, hl)
   end
end

-- highlight Personalizados
vim.api.nvim_set_hl(0, 'FirstColor', { fg = colors.orange_1 })
vim.api.nvim_set_hl(0, 'SecondColor', { fg = colors.blue_2 })
vim.api.nvim_set_hl(0, 'FourthColor', { fg = colors.red_2 })
vim.api.nvim_set_hl(0, 'FifthColor', { fg = colors.teal_2 })
