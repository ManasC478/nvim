return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local term = require("toggleterm")
    term.setup({
      open_mapping = [[<c-/>]]
    })

    vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true })

    -- terminal directions
    local Terminal = require("toggleterm.terminal").Terminal


    -- floating
    local float_term = Terminal:new({ cmd = "bash", direction = "float", hidden = true })
    vim.keymap.set("n", "<leader>tf", function() float_term:toggle() end, { noremap = true, silent = true })
    -- horizontal
    local horizontal_term = Terminal:new({ cmd = "bash", direction = "horizontal", hidden = true })
    vim.keymap.set('n', '<leader>th', function () horizontal_term:toggle() end, { noremap = true, silent = true })
  end,
}
