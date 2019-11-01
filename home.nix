{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #swayidle
    #swaylock
    waybar
    wl-clipboard
  ];

  programs.chromium = {
    enable = true;
    extensions = [];
  };

  programs.git = {
    enable = true;
    userName = "Gavin James";
    userEmail = "gavin.james@gmail.com";
  };

  programs.termite = {
    enable = true;
  };

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
    ];
  };

  programs.vscode = {
    enable = true;
    extensions = [];
  };

  xdg.enable = true;

  xdg.configFile."sway" = {
    source = ./config/sway;
    recursive = true;
  };

  xdg.configFile."waybar" = {
    source = ./config/waybar;
    recursive = true;
  };
}
