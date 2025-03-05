return { 
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "lua", "vim", "javascript", "python", "java", "css", "terraform", "hcl", "go", "hurl" },
      highlight = { enable = true },
      indent = { enable = true }
    }
  end
}
