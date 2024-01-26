{
  plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
    sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
      {name = "luasnip";}
    ];
    mapping = {
      "<Tab>" = {
        action = ''
          function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end
        '';
        modes = [ "i" "s" ];
      };
    };
  };
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp_luasnip = {
    enable = true;
  };
  plugins.luasnip = {
    enable = true;
  };
}
