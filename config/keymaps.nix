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
      key = "<leader>tf";
      action = "<cmd>FloatermToggle<CR>";
    }
    {
      key = "<leader>gg";
      action = "<cmd>FloatermNew lazygit<CR>";
    }
    {
      key = "<leader>]b";
      action = "<cmd>BufferLineCycleNext<CR>";
    }
    {
      key = "<leader>[b";
      action = "<cmd>BufferLineCyclePrev<CR>";
    }
    {
      key = "<leader>bd";
      action = "<cmd>bd<CR>";
    }
    {
      key = "<C-h>";
      action = "<C-w>h";
    }
    {
      key = "<C-j>";
      action = "<C-w>j";
    }
    {
      key = "<C-k>";
      action = "<C-w>k";
    }
    {
      key = "<C-l>";
      action = "<C-w>l";
    }
    {
      key = "<leader>c";
      action = "<cmd>bd<CR>";
    }
  ];
}
