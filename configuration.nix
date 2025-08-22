{ inputs, ... }:
{
  imports =
    [
      ./modules/modules.nix
      ./packages.nix
      ./hardware-configuration.nix
    ];

  networking.hostName = "nixos";
  # networking.wireless.enable = true;
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Almaty";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "kk_KZ.UTF-8";
    LC_IDENTIFICATION = "kk_KZ.UTF-8";
    LC_MEASUREMENT = "kk_KZ.UTF-8";
    LC_MONETARY = "kk_KZ.UTF-8";
    LC_NAME = "kk_KZ.UTF-8";
    LC_NUMERIC = "kk_KZ.UTF-8";
    LC_PAPER = "kk_KZ.UTF-8";
    LC_TELEPHONE = "kk_KZ.UTF-8";
    LC_TIME = "kk_KZ.UTF-8";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  hardware = {
    # Opengl
    graphics.enable = true;
    
    # Most wayland compositors need this
    # nvidia.modesetting.enable = true;
  };

  # TODO: Move all these above

  # Install zsh
  programs.zsh.enable = true;

  # Install obs studio
  programs.obs-studio = {
    enable = true;

    # optional Nvidia hardware acceleration
    package = (
      inputs.pkgs.obs-studio.override {
        cudaSupport = true;
      }
    );

    plugins = with inputs.pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-gstreamer
      obs-vkcapture
    ];
  };

  # Install steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05";

}
