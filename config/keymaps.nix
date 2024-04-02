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
      key = "<leader>fw";
      action = "<cmd>Telescope live_grep<CR>";
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
      action = "<cmd>ToggleTerm name=main direction=float<CR>";
      mode = ["n"];
    }
    {
      key = "<leader>tf";
      action = "<C-\\><C-n><C-w>l";
      mode = ["t"];
    }
    {
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
    }
    {
      key = "]b";
      action = "<cmd>BufferLineCycleNext<CR>";
      mode = [ "n" ];
    }
    {
      key = "[b";
      action = "<cmd>BufferLineCyclePrev<CR>";
      mode = [ "n" ];
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
