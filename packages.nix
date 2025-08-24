{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Common
    vim
    wget
    neovim
    gnumake
    usbutils
    ffmpeg_6
    wl-clipboard

    # Tools
    git
    alacritty
    jq
    fastfetch
    btop
    gedit
    gcc
    blueberry
    yazi
    mc
    lf

    # For windows managers
    swww
    wofi
    hyprshot
    grim
    slurp

    # Programs
    spotify
    discord
    brave
    librewolf
    gimp3
    krita
    audacity
    python3
    go
    vscode
    kdePackages.kdenlive

    # Games
    prismlauncher
    osu-lazer
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-lgc-plus
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.symbols-only
  ];
}