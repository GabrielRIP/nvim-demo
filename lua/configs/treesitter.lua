local present, treesitter = pcall(require, 'nvim-treesitter.configs')

if not present then
   return
end

treesitter.setup({
   ensure_installed = {
      'lua', 'javascript', 'typescript', 'html', 'json', 'markdown', 'markdown_inline',
      'css', 'scss'
   },
   highlight = {
      enable = true,
      -- disable = {},
      use_languagetree = true,
   },
   indent = { -- para porder user indent_blankline
      enable = true,
   },
   rainbow = { -- modulo de colores en brackets {}, (), []
      enable = true,
      disable = { 'html', 'css' }, --list of languages you want to disable the plugin for
      extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
   },
   playground = { -- modulo de prueva de grupos highlight
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false, -- Whether the query persists across vim sessions
      keybindings = {
         toggle_query_editor = 'o',
         toggle_hl_groups = 'i',
         toggle_injected_languages = 't',
         toggle_anonymous_nodes = 'a',
         toggle_language_display = 'I',
         focus_language = 'f',
         unfocus_language = 'F',
         update = 'R',
         goto_node = '<cr>',
         show_help = '?',
      },
   }
})
