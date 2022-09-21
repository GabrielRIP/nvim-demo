-- -- ╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┓
local colors = require('theme.colors')
-- -- ╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍╍┛

local highlights = {
   editor = require('theme.groups.editor').get(colors),
   syntax = require('theme.groups.syntax').get(colors),
   git_signs = require('theme.groups.integrations.gitsigns').get(colors),
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
-- api_nvim_set(0, 'FirstColor', { fg = colors.first_color })
-- api_nvim_set(0, 'SecondColor', { fg = colors.second_color });
-- api_nvim_set(0, 'FourthColor', { fg = colors.fourth_color });
-- api_nvim_set(0, 'FifthColor', { fg = colors.fifth_color })

-- +--------------------------------------------------------------------+
-- Telescope
-- api_nvim_set(0, 'TelescopeTitle', { fg = colors.first_color });
-- api_nvim_set(0, 'TelescopeNormal', { bg = "None", fg = "None" });
-- api_nvim_set(0, 'TelescopeBorder', { bg = "None", fg = "#488DFF" });
-- api_nvim_set(0, 'TelescopeMatching', { link = 'Constant' });
