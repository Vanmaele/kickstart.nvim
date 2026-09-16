---@module 'lazy'
---@type LazySpec
return {

  { -- Render markdown inline in the buffer (headings, code blocks, lists, tables, checkboxes...)
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { 'markdown' },
    opts = {
      completions = { lsp = { enabled = true } },
    },
    keys = {
      { '<leader>mt', '<cmd>RenderMarkdown toggle<CR>', desc = 'Toggle inline render', ft = 'markdown' },
    },
  },

  { -- Live preview in the browser
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = 'cd app && ./install.sh',
    keys = {
      { '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', desc = 'Preview in browser', ft = 'markdown' },
    },
  },
}
