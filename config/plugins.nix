{ vimPlugins, ... }: {
  plugins = {
    presence-nvim = {
      enable = true;
      mainImage = "file";
    };
    neo-tree = {
      enable = true;
    };

    telescope = {
      enable = true;
    };

    floaterm = {
      enable = true;
    };

    better-escape = {
      enable = true;
    };
    copilot-lua = {
      enable = true;
    };
    alpha = {
      enable = true;
      theme = "dashboard";
    };
    lualine = {
      enable  = true;
      globalstatus = true;
    };
    none-ls = {
      enable = true;
      updateInInsert = true;
      sourcesItems = [
        
      ];
    };
  };
  extraPlugins = with vimPlugins; [
    {
      plugin = telescope-ui-select-nvim;
    }
  ];
}
