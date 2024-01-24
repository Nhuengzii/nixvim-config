{
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
    }
    {
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
    }
    {
      key = "<leader>w";
      action = "<cmd>w<CR>";
    }
    {
      key = "<leader>q";
      action = "<cmd>q<CR>";
    }
    {
      key = "<leader>ft";
      action = "<cmd>FloatermToggle<CR>";
    }
    {
      key = "<leader>gg";
      action = "<cmd>FloatermNew lazygit<CR>";
    }
    {
      key = "]b";
      action = "<cmd>BufferLineMoveNext<CR>";
    }
    {
      key = "[b";
      action = "<cmd>BufferLineMovePrev<CR>";
    }
  ];
}
