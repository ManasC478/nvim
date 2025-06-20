return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
					hide_dotfiles = false,
					hide_gitignored = true,
				},
			},
		})
		vim.keymap.set("n", "<leader>h", ":Neotree toggle left<CR>")
		vim.keymap.set("n", "<leader>f", ":Neotree focus<CR>")
		vim.keymap.set("n", "<leader>q", ":Neotree close<CR>")
	end,
}
