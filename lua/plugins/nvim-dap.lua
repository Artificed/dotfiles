return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
    },
    -- stylua: ignore
    keys = {
      { "<leader>dpt", function() require("dap-python").test_method() end, desc = "debug method", ft = "python" },
      { "<leader>dpc", function() require("dap-python").test_class() end, desc = "debug class", ft = "python" },
    },
    config = function()
      local dap_python = require("dap-python")
      local python_path = "/opt/anaconda3/envs/ai/bin/python"
      dap_python.setup(python_path)
    end,
  },
}
