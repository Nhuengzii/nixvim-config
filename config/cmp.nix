{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    };
    settings.window.completion = {
      border = "rounded";
    };
    settings.sources = [
       {name = "nvim_lsp"; max_item_count = 7;}
       {name = "path";}
       {name = "buffer";}
       {name = "luasnip";}
    ];
    settings.snippet = {
      expand = "function(args) require('luasnip').lsp_expand(args.body) end";
    };
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
