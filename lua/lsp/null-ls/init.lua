-- null-ls
local null_ls = require('null-ls')

local sources = {
   null_ls.builtins.formatting.stylua,
   null_ls.builtins.formatting.prettierd.with({
      filetypes = { 'html', 'yaml', 'markdown', 'json', 'javascript', 'javascriptreact' },
   }),
   null_ls.builtins.diagnostics.eslint_d.with({
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
   }),
}

null_ls.setup({ sources = sources })
