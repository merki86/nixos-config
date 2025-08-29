{
  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "merki";
    homeDirectory = "/home/merki";
    stateVersion = "24.11";
  };

  # TODO: Move

  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.95;

      font = {
        size = 13.0;
        normal = {
          family = "JetBrains Mono";
          style = "Bold";
        };
      };

      colors.primary.background = "#1d2021";
    };
  };

  home-manager.users.merki = {
    services.gammastep = {
      enable = true;
      provider = "manual";
      latitude = 51.17;
      longitude = 71.45;
    }
  }
}
