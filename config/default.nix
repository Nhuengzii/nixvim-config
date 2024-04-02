{...}:{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./colorscheme.nix
    ./lsp.nix
    ./options.nix
    ./plugins.nix
    ./cmp.nix
    ./keymaps.nix
    ./treesitter.nix
  ];

  clipboard.providers.wl-copy.enable = true;
  clipboard.providers.xclip.enable = true;
  clipboard.providers.xsel.enable = true;
  clipboard.register = "unnamedplus";
}
