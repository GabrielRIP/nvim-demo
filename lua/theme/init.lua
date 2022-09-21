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

-- booleans = { 'bold' },
-- comments = { 'italic', 'bold' },
-- functions = { 'italic' },
-- variables = { 'bold' },
-- properties = { 'bold' },
-- Comment = { fg = colors.blue },
-- -- TSConstBuiltin = { fg = colors.peach, style = {} },
-- -- TSConstant = { fg = colors.sky },
-- -- TSComment = { fg = colors.surface2, style = { "italic" } }
--
-- -- api_nvim_set(0, 'WinSeparator', { bg = "None", fg = "#16161e" });
-- -- NvimTree
-- NvimTreeVertSplit = { fg = colors.subtext0 },


-- Floats/Windows
--    api_nvim_set(0, 'NormalFloat', { bg = "None", fg = "None" });
--    api_nvim_set(0, 'FloatBorder', { bg = "None", fg = "#488DFF" });
--    api_nvim_set(0, 'WhichKeyFloat', { bg = "None", fg = "#488DFF" });
--    api_nvim_set(0, 'BufferTabpageFill', { fg = "None" });
-- hi_custom(0, 'WinSeparator', { bg = "None", fg = colors.subtext0 });
--    api_nvim_set(0, 'BqfPreviewBorder', { link = 'FloatBorder' })



--    -- highlight Personalizados
--    api_nvim_set(0, 'FirstColor', { fg = colors.first_color })
--    api_nvim_set(0, 'SecondColor', { fg = colors.second_color });
--    api_nvim_set(0, 'FourthColor', { fg = colors.fourth_color });
--    api_nvim_set(0, 'FifthColor', { fg = colors.fifth_color })
--
--    -- +--------------------------------------------------------------------+
--    -- para el plugin barbar
--    api_nvim_set(0, 'BufferCurrent', { bg = '#1D2024', fg = '#ffffff' })
--    api_nvim_set(0, 'BufferCurrentIndex', { bg = '#569CD6', fg = '#181818' })
--    api_nvim_set(0, 'BufferCurrentSign', { bg = '#34384C', fg = '#569CD6' })
--    api_nvim_set(0, 'BufferCurrentMod', { bg = '#1D2024', fg = '#E2B55A' })
--
--    api_nvim_set(0, 'BufferVisible', { bg = '#1D2024', fg = '#C5C5C5' })
--    api_nvim_set(0, 'BufferVisibleIndex', { bg = '#79dac8', fg = '#181818' })
--    api_nvim_set(0, 'BufferVisibleSign', { bg = '#34384C', fg = '#79dac8' })
--    api_nvim_set(0, 'BufferVisibleMod', { bg = '#1D2024', fg = '#E2B55A' })
--
--    api_nvim_set(0, 'BufferInactive', { bg = '#303030', fg = '#C5C5C5' })
--    api_nvim_set(0, 'BufferInactiveIndex', { bg = '#303030', fg = '#ffffff' })
--    api_nvim_set(0, 'BufferInactiveSign', { bg = '#303030' })
--    api_nvim_set(0, 'BufferVisibleMod', { bg = '#303030', fg = '#E2B55A' })
--    -- +--------------------------------------------------------------------+
--
--    -- Telescope
--    api_nvim_set(0, 'TelescopeTitle', { fg = colors.first_color });
--    api_nvim_set(0, 'TelescopeNormal', { bg = "None", fg = "None" });
--    api_nvim_set(0, 'TelescopeBorder', { bg = "None", fg = "#488DFF" });
--    api_nvim_set(0, 'TelescopeMatching', { link = 'Constant' });
--
--    -- Misc
--    api_nvim_set(0, 'GitSignsCurrentLineBlame', { link = 'Comment' });
--    api_nvim_set(0, 'Boolean', { fg = '#F7768E' });
--    api_nvim_set(0, 'Comment', { fg = colors.text_commentary })
--    api_nvim_set(0, 'StatusLine', { bg = '#34384C' })
--    -- vim.cmd('highlight StatusLine guibg=' .. '#34384C')
--    -- vim.cmd('highlight CursorLine guibg=' .. '#36383F')
--
--    -- Completado de colores cmp
--    local highlights = {
--       --CmpItemAbbr            = { fg = tokyonight_colors.dark3, bg = "NONE" },
--       --CmpItemKindClass       = { fg = tokyonight_colors.orange },
--       --CmpItemKindConstructor = { fg = tokyonight_colors.purple },
--       --CmpItemKindFolder      = { fg = tokyonight_colors.blue2 },
--       --CmpItemKindFunction    = { fg = tokyonight_colors.blue },
--       --CmpItemKindInterface   = { fg = tokyonight_colors.teal, bg = "NONE" },
--       --CmpItemKindKeyword     = { fg = tokyonight_colors.magneta2 },
--       --CmpItemKindMethod      = { fg = tokyonight_colors.red },
--       --CmpItemKindReference   = { fg = tokyonight_colors.red1 },
--       CmpItemKindSnippet    = { fg = '#15B27B' },
--       CmpItemKindVariable   = { fg = '#E86671', bg = "NONE" },
--       CmpItemKindText       = { fg = '#D3D3D3' },
--       CmpItemMenu           = { fg = '#FFA630', bg = "NONE" },
--       CmpItemAbbrMatch      = { fg = '#61AFEF', bg = "NONE" },
--       CmpItemAbbrMatchFuzzy = { fg = '#61AFEF', bg = "NONE" },
--    }
--    api_nvim_set(0, "CmpBorderedWindow_FloatBorder", { fg = '#488DFF' })
