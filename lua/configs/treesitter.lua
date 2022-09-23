local present, treesitter = pcall(require, 'nvim-treesitter.configs')

if not present then
   return
end


local options = {
   ensure_installed = {},

   highlight = {
      enable = true,
      disable = { 'markdown', 'html', 'css', 'scss' },
      use_languagetree = true,
   },

   indent = {
      enable = true,
   },
}

treesitter.setup(options)
