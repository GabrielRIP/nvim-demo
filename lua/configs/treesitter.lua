local present, treesitter = pcall(require, 'nvim-treesitter.configs')

if not present then
   return
end


local options = {
   ensure_installed = {},

   highlight = {
      enable = true,
      disable = {
         'markdown', 'html', 'css', 'scss'
      },
      use_languagetree = true,
   },

   indent = {
      enable = true,
   },
   rainbow = {
      enable = true,
      disable = { 'html' }, --list of languages you want to disable the plugin for
      extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
   }
}

treesitter.setup(options)
