{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    };

    settings.sources = [
       {name = "nvim_lsp";}
       {name = "path";}
       {name = "buffer";}
       {name = "luasnip";}
    ];
  };

  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip = {
    enable = true;
  };
  plugins.luasnip = {
    enable = true;
  };
  extraConfigLua = ''
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
        -- delay update diagnostics
        update_in_insert = true,
      }
    );
'';
}
