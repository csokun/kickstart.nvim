return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
    vim.keymap.set('n', '[b', [[<CMD>:BufferLineCycleNext<CR>]], { desc = 'Next buffer' })
    vim.keymap.set('n', 'b]', [[<CMD>:BufferLineCyclePrev<CR>]], { desc = 'Previous buffer' })
  end,
}
