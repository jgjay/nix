{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #swayidle
    #swaylock
    powerline-fonts
    waybar
    wl-clipboard
  ];

  programs.home-manager.enable = true;

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
    font = "DejaVu Sans Mono 9";
    foregroundColor = "#abb2bf";
    foregroundBoldColor = "#b6bdca";
    cursorColor = "#b6bdca";
    cursorForegroundColor = "#282c34";
    backgroundColor = "rgba(40, 44, 52)";
    colorsExtra = ''
    # 16 color space

    # Black, Gray, Silver, White
    color0  = #282c34
    color8  = #545862
    color7  = #abb2bf
    color15 = #c8ccd4

    # Red
    color1  = #e06c75
    color9  = #e06c75

    # Green
    color2  = #98c379
    color10 = #98c379

    # Yellow
    color3  = #e5c07b
    color11 = #e5c07b

    # Blue
    color4  = #61afef
    color12 = #61afef

    # Purple
    color5  = #c678dd
    color13 = #c678dd

    # Teal
    color6  = #56b6c2
    color14 = #56b6c2

    # Extra colors
    color16 = #d19a66
    color17 = #be5046
    color18 = #353b45
    color19 = #3e4451
    color20 = #565c64
    color21 = #b6bdca
    '';
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

  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
      plugins = [ "git" ];
    };
    initExtra = ''
    DISABLE_UPDATE_PROMPT=true
    DEFAULT_USER=gavin
    '';
  };

  fonts.fontconfig.enable = true;

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
