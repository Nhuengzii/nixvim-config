{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = false })";
      "<S-Tab>" = ''
        cmp.mapping(function (fallback)
          local luasnip = require('luasnip')
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
            end
        end, {'i', 's'})
      '';
      "<C-Tab>" = ''
        cmp.mapping(function (fallback)
          local luasnip = require('luasnip')
          if luasnip.jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
            end
        end, {'i', 's'})
      '';
      "<Tab>" = ''
        cmp.mapping(function (fallback)
          local luasnip = require('luasnip')
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expandable() then
            luasnip.expand()
          elseif luasnip.jumpable(1) then
            luasnip.jump(1)
          else
            fallback()
          end
        end, {'i', 's'})
      '';
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
  plugins.friendly-snippets.enable = true;
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
