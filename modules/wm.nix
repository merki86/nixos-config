{
  services.xserver.enable = true;
  
  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  services.xserver.xkb = {
    layout = "us,kz";
    variant = "";
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
}