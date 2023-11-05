return {
  {
    "ThePrimeagen/harpoon",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
      { "<leader>hm", "<cmd>lua require(''harpoon.mark').add_file()", desc = "Mark Files" },
      { "<leader>hu", "<cmd>lua require('harpoon.ui').toggle_quick_menu()", desc = "Toggle Harpoon Ui" },
      { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()", desc = "Next files" },
      { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()", desc = "Previous files" },
      { "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)", desc = "Navigate to file 1" },
      { "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)", desc = "Navigate to file 2" },
      { "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)", desc = "Navigate to file 4" },
      { "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)", desc = "Navigate to file 4" },
    },
  },
}
