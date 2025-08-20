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

    # Programs
    spotify
    discord
    brave
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
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.symbols-only
  ];
}