return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', 'ff', builtin.find_files, {})
      vim.keymap.set('n', 'lg', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        },
        require('telescope').setup{
          defaults = {
            file_ignore_patterns = {".git/", "node_modules"},
          },
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
