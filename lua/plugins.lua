 -- 开启 Folding 模块
  vim.opt.foldmethod = "expr"
  vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
  vim.opt.foldlevel = 99
local packer= require('packer')
packer.startup({function(use)
  use ('wbthomason/packer.nvim')
  use ('mhinz/vim-startify')
  use ('KeitaNakamura/neodark.vim') 
  use ('Yggdroot/indentLine' )
  use ('vim-airline/vim-airline') 
  use ('vim-airline/vim-airline-themes') 
  use ('brooth/far.vim')
  use ('nvim-lua/plenary.nvim')
  use("glepnir/dashboard-nvim")
  use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
   }
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
 end,
config = {
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
  }
})
-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)


