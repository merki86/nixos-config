{ pkgs, ... }: {
  services.xserver.enable = true;
  
  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  services.xserver.xkb = {
    layout = "us,kz";
    variant = "";
  };

  services.xserver.videoDrivers = [
    "nvidia"
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
}