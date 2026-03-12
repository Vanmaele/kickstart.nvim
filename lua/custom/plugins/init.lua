-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
---
---
return {

  {
    'tpope/vim-fugitive',
    keys = {
      { '<leader>gg', '<cmd>Git<CR>', desc = 'Git status' },
      { '<leader>gd', '<cmd>Gdiffsplit<CR>', desc = 'Git diff split' },
      { '<leader>gb', '<cmd>Git blame<CR>', desc = 'Git blame' },
    },
  },
}
