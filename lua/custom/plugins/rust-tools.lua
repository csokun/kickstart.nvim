-- In your plugins configuration (e.g., in lazy.nvim setup)
return {
  'simrat39/rust-tools.nvim',
  ft = { 'rust' }, -- Only load for Rust files
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Example dependency
  config = function()
    require('rust-tools').setup {
      server = {
        -- rust-analyzer options
        settings = {
          ['rust-analyzer'] = {
            checkOnSave = {
              command = 'clippy',
            },
            procMacro = {
              enable = true,
            },
          },
        },
      },
      -- Other rust-tools options
    }
  end,
}
