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

    toggleterm = {
      enable = true;
    };

    better-escape = {
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
    gitsigns = {
      enable = true;
    };
    nvim-autopairs = {
      enable = true;
    };
    copilot-lua.enable = true;
  };
  extraPlugins = with vimPlugins; [
    {
      plugin = telescope-ui-select-nvim;
    }
    {
      plugin = lazygit-nvim;
    }
  ];
}
