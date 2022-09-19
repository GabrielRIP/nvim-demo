local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local packer_bootstrap = nil

if fn.empty(fn.glob(install_path)) > 0 then
   packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
      install_path })
end

return require('packer').startup({
   function(use)
      -- (1) Packer plugin manager
      use 'wbthomason/packer.nvim'
      -- +--------------------------------------------------------------------+

      -- (2) Necesarios para cargar primero
      use { 'lewis6991/impatient.nvim' }
      -- use { 'nathom/filetype.nvim' }
      use { 'nvim-lua/plenary.nvim' }
      use {
         'kyazdani42/nvim-web-devicons',
         config = function() require('configs.devicons') end
      }
      -- use { -- Para la portada Inicial con las Opciones
      --    'goolord/alpha-nvim',
      --    config = function() require('plugins.alpha') end
      -- }
      -- +--------------------------------------------------------------------+

      -- (3) Themes
      -- use { 'catppuccin/nvim', as = 'catppuccin' }
      -- +--------------------------------------------------------------------+

      -- ["nvim-treesitter/nvim-treesitter"] = {
      --   module = "nvim-treesitter",
      --   setup = function()
      --     require("core.lazy_load").on_file_open "nvim-treesitter"
      --   end,
      --   cmd = require("core.lazy_load").treesitter_cmds,
      --   run = ":TSUpdate",
      --   config = function()
      --     require "plugins.configs.treesitter"
      --   end,
      -- },

      -- (4) Treesitter
      use {
         'nvim-treesitter/nvim-treesitter',
         config = function() require('configs.treesitter') end
      }
      -- use {
      --    'nvim-treesitter/nvim-treesitter-textobjects',
      --    after = 'nvim-treesitter'
      -- }
      -- use {
      --    'RRethy/nvim-treesitter-textsubjects',
      --    after = 'nvim-treesitter'
      -- }
      -- use {
      --    'm-demare/hlargs.nvim',
      --    config = function() require('hlargs').setup() end
      -- }
      -- +--------------------------------------------------------------------+

      -- (5) Navigating (Telescope/Tree/Refactor)
      -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
      -- use {
      --    'nvim-telescope/telescope.nvim',
      --    requires = {
      --       { 'nvim-lua/popup.nvim' },
      --       { 'nvim-lua/plenary.nvim' },
      --       { 'nvim-telescope/telescope-fzf-native.nvim' }
      --    },
      --    config = function() require('plugins.telescope') end
      -- }
      -- use { 'cljoly/telescope-repo.nvim' }
      -- use { 'kevinhwang91/nvim-bqf', ft = 'qf' }
      use {
         'kyazdani42/nvim-tree.lua',
         config = function() require('configs.tree') end
      }
      -- use { 'gbprod/stay-in-place.nvim',
      --    config = function()
      --       require('stay-in-place').setup()
      --    end
      -- }
      -- +--------------------------------------------------------------------+

      -- (6) LSP Base
      use { 'williamboman/mason.nvim' }
      use { 'williamboman/mason-lspconfig.nvim' }
      use { 'neovim/nvim-lspconfig' }

      -- +--------------------------------------------------------------------+

      -- (7) LSP Cmp
      use {
         'hrsh7th/nvim-cmp',
         event = 'InsertEnter',
         config = function() require('configs.cmp_conf') end
      }
      use { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' }
      use { 'hrsh7th/cmp-nvim-lsp', after = 'cmp-nvim-lua' }
      use { 'hrsh7th/cmp-buffer', after = 'cmp-nvim-lsp' }
      use { 'hrsh7th/cmp-path', after = 'cmp-buffer' }
      use { 'hrsh7th/cmp-cmdline', after = 'cmp-path' }
      use { 'hrsh7th/cmp-calc', after = 'cmp-cmdline' }
      -- use {
      --   'David-Kunz/cmp-npm',
      --   after = 'cmp-cmdline',
      --   config = "require('plugins.cmp-npm')"
      -- }
      -- use { 'saadparwaiz1/cmp_luasnip', after = 'cmp-npm' }
      -- +--------------------------------------------------------------------+

      -- (8) LSP Addons
      -- use {
      --    'stevearc/dressing.nvim',
      --    requires = { 'MunifTanjim/nui.nvim' },
      --    config = function() require('plugins.dressing') end
      -- }
      -- use { 'onsails/lspkind-nvim' }
      -- use { 'nvim-lua/popup.nvim' }
      -- use {
      --    'ChristianChiarulli/nvim-gps',
      --    branch = 'text_hl',
      --    config = function() require('plugins.gps') end,
      --    after = 'nvim-treesitter'
      -- }
      -- use { 'jose-elias-alvarez/typescript.nvim' }
      -- +--------------------------------------------------------------------+

      -- (9) Buffer and Bar state
      use { -- Buffer
         'romgrk/barbar.nvim',
         config = function() require('configs.barbar') end
      }
      use {
         'ecosse3/galaxyline.nvim',
         event = 'BufWinEnter',
         config = function() require('configs.galaxyline') end
      }
      -- +--------------------------------------------------------------------+

      -- (10) General
      use {
         'numToStr/Comment.nvim',
         -- config = function() require('plugins.comment') end
      }
      -- use {
      --    'LudoPinelli/comment-box.nvim',
      --    config = function() require('plugins.comment_box') end
      -- }
      -- use {
      --    'folke/todo-comments.nvim',
      --    config = function() require('plugins.todo_comments') end
      -- }
      -- use { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' }
      -- use {
      --    'akinsho/nvim-toggleterm.lua',
      --    branch = 'main',
      --    config = function() require('plugins.toggleterm') end
      -- }

      -- use { 'mg979/vim-visual-multi' }
      -- use { 'junegunn/vim-easy-align' } -- Para ordenar por caracteres como =
      use { 'ggandor/lightspeed.nvim' } -- Para buscar palabras.
      use { 'antoinemadec/FixCursorHold.nvim' } -- Needed while issue https://github.com/neovim/neovim/issues/12587 is still open

      -- use { -- ver, instalar, eliminar... es Brujeria
      --    'vuki656/package-info.nvim',
      --    event = 'BufEnter package.json',
      --    config = function() require('plugins.package-info') end
      -- }
      -- use {
      --    'iamcco/markdown-preview.nvim',
      --    run = 'cd app && npm install',
      --    setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
      --    ft = { 'markdown' }
      -- }
      -- use {
      --    'declancm/cinnamon.nvim',
      --    config = function() require('plugins.cinnamon') end
      -- }
      -- use { -- Para cambiar al directorio de trabajo.
      --    'airblade/vim-rooter',
      --    setup = function()
      --       vim.g.rooter_patterns = {
      --          '.git', 'package.json', '_darcs', '.bzr', '.svn', 'Makefile'
      --       }
      --    end
      -- }
      -- use {
      --    'Shatur/neovim-session-manager',
      --    config = function() require('plugins.session-manager') end
      -- }

      -- use { 'kylechui/nvim-surround', config = function() require('nvim-surround').setup() end }
      -- +--------------------------------------------------------------------+

      -- (11) Snippets & Language & Syntax
      -- use {
      --    'windwp/nvim-autopairs',
      --    after = { 'nvim-treesitter', 'nvim-cmp' },
      --    config = function() require('plugins.autopairs') end
      -- }
      -- use {
      --    'windwp/nvim-ts-autotag',
      --    config = function() require('nvim-ts-autotag').setup() end
      -- }
      -- use { 'p00f/nvim-ts-rainbow', after = { 'nvim-treesitter' } }
      use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require('configs.indent') end
      }
      use {
         'NvChad/nvim-colorizer.lua',
         config = function() require('configs.colorizer') end
      }
      -- use { 'KabbAmine/vCoolor.vim' }
      -- use { 'potamides/pantran.nvim' } -- traductor
      -- use {
      --    'L3MON4D3/LuaSnip',
      --    requires = { 'rafamadriz/friendly-snippets' },
      --    after = 'cmp_luasnip'
      -- }
      -- +--------------------------------------------------------------------+

      -- (12) Git
      use {
         'lewis6991/gitsigns.nvim',
         config = function() require('gitsigns').setup() end,
         event = 'BufRead'
      }
      -- use {
      --    'sindrets/diffview.nvim',
      --    requires = 'nvim-lua/plenary.nvim',
      --    config = function() require('plugins.git-configs.diffview') end
      -- }
      -- use {
      --    'kdheepak/lazygit.nvim',
      --    config = function() require('plugins.git-configs.lazy_git') end
      -- }

      -- +--------------------------------------------------------------------+

      -- (13) Testing
      -- use {
      --    'rcarriga/neotest',
      --    requires = {
      --       'nvim-lua/plenary.nvim',
      --       'nvim-treesitter/nvim-treesitter',
      --       'antoinemadec/FixCursorHold.nvim',
      --       'haydenmeade/neotest-jest'
      --    },
      --    config = "require('plugins.neotest')"
      -- }
      -- +--------------------------------------------------------------------+

      -- (14) DAP
      -- use { 'jbyuki/one-small-step-for-vimkind' } -- for nvim(lua)

      -- use {
      --    'mfussenegger/nvim-dap',
      --    config = function() require('plugins.dap') end
      -- }
      -- use { 'rcarriga/nvim-dap-ui' }
      -- +--------------------------------------------------------------------+

      if packer_bootstrap then
         require('packer').sync()
      end
   end,
   config = {
      max_jobs = 50,
      display = {
         open_fn = function()
            return require('packer.util').float({ border = 'rounded' })
         end
      }
   }
})
