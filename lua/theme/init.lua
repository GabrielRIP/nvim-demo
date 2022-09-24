-- -- ╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
local colors = require('theme.colors')
-- -- ╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛

local highlights = {
   editor = require('theme.groups.editor').get(colors),
   syntax = require('theme.groups.syntax').get(colors),
   treesitter = require('theme.groups.integrations.treesitter').get(colors),
   style_markdown = require('theme.groups.lang.markdown').get(colors),
   style_html = require('theme.groups.lang.html').get(colors),
   git_signs = require('theme.groups.integrations.gitsigns').get(colors),
   lsp_native = require('theme.groups.integrations.lsp_native').get(colors),
   barbar = require('theme.groups.integrations.barbar').get(colors),
   nvimtree = require('theme.groups.integrations.nvimtree').get(colors),
   indent = require('theme.groups.integrations.indent_blank').get(colors),
   cmp = require('theme.groups.integrations.cmp').get(colors),
}

for _, element in pairs(highlights) do
   for group, hl in pairs(element) do
      vim.api.nvim_set_hl(0, group, hl)
   end
end

-- highlight Personalizados
vim.api.nvim_set_hl(0, 'FirstColor', { fg = colors.orange_1 })
vim.api.nvim_set_hl(0, 'SecondColor', { fg = colors.blue_2 });
vim.api.nvim_set_hl(0, 'FourthColor', { fg = colors.red_2 });
vim.api.nvim_set_hl(0, 'FifthColor', { fg = colors.teal_2 })
