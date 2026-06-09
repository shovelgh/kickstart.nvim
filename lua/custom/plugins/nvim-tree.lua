return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Disable netrw (built-in file explorer)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Setup nvim-tree
    require('nvim-tree').setup({
      -- Add your custom nvim-tree options here
      view = {
        width = 30,
      },
    })

    -- Keymap to toggle the tree
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle nvim-tree' })
  end,
}

