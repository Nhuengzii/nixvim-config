{
  plugins.lsp.enable = true;
  plugins.lsp.servers = {
    nil_ls = {
      enable = true;
    };
    tsserver = {
      enable = true;
    };
    pyright = {
      enable = true;
    };
    clangd = {
      enable = true;
    };
    fortls = {
      enable = true;
    };
    dockerls.enable = true;
    yamlls.enable = true;
    bashls.enable = true;
    helm-ls.enable = true;
    terraformls.enable = true;
    taplo.enable = true;
  };
  keymaps = [
    {
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<CR>";
    }
    {
      key = "<leader>la";
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
    }
    {
      key = "<leader>lr";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
    }
    {
      key = "<leader>lr";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
    }
    {
      key = "<leader>lf";
      action = "<cmd>lua vim.lsp.buf.format()<CR>";
    }
  ];
}
