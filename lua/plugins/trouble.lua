return {
  "folke/trouble.nvim",
  requires = "nvim-tree/nvim-web-devicons",
  cmd = { "TroubleToggle", "Trouble" },
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    -- {
    --   "<leader>xX",
    --   "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    --   desc = "Buffer Diagnostics (Trouble)",
    -- },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    -- {
    --   "<leader>cl",
    --   "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    --   desc = "LSP Definitions / references / ... (Trouble)",
    -- },
    {
      "<leader>xl",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xp",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
    {
      "fd",
      "<cmd>Trouble lsp_declarations toggle<cr>",
      desc = "LSP Declarations (Trouble)",
    },
    {
      "fi",
      "<cmd>Trouble lsp_implementations toggle<cr>",
      desc = "LSP Implementations (Trouble)",
    },
    {
      "fr",
      "<cmd>Trouble lsp_references toggle<cr>",
      desc = "LSP References (Trouble)",
    },
    {
      "fdd",
      "<cmd>Trouble lsp_type_definitions toggle<cr>",
      desc = "LSP Type Definitions (Trouble)",
    }
  },
  config = function()
    require("trouble").setup()
    -- vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
    -- vim.api.nvim_set_keymap("n", "fw", "<cmd>Trouble diagnostics toggle<cr>", { silent = true, noremap = true })
    -- vim.api.nvim_set_keymap(
    --   "n",
    --   "fde",
    --   "<cmd>Trouble lsp_declarations toggle<cr>",
    --   { silent = true, noremap = true }
    -- )
    -- vim.api.nvim_set_keymap("n", "fr", "<cmd>Trouble lsp_references toggle<cr>", { silent = true, noremap = true })
    -- vim.api.nvim_set_keymap(
    --   "n",
    --   "fi",
    --   "<cmd>Trouble lsp_implementations toggle<cr>",
    --   { silent = true, noremap = true }
    -- )
    -- vim.api.nvim_set_keymap("n", "fd", "<cmd>Trouble lsp_definitions toggle<cr>", { silent = true, noremap = true })
    -- vim.api.nvim_set_keymap(
    --   "n",
    --   "fdd",
    --   "<cmd>Trouble lsp_type_definitions toggle<cr>",
    --   { silent = true, noremap = true }
    -- )
  end,
}
