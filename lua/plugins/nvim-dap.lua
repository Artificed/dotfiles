return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      {
        "williamboman/mason.nvim",
        opts = { ensure_installed = { "delve" } },
      },
      {
        "leoluz/nvim-dap-go",
        opts = {},
      },
    },
    -- stylua: ignore
    keys = {
      { "<leader>dpt", function() require("dap-python").test_method() end, desc = "Debug Method", ft = "python" },
      { "<leader>dpc", function() require("dap-python").test_class() end, desc = "Debug Class", ft = "python" },
    },
    config = function()
      -- Python DAP configuration
      local dap_python = require("dap-python")
      local python_path = "/opt/anaconda3/envs/ai/bin/python"
      dap_python.setup(python_path)

      -- Go DAP configuration
      local dap_go = require("dap-go")
      dap_go.setup()
    end,
  },
}
