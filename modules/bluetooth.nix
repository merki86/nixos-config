{
  services.blueman.enable = true;

  hardware.bluetooth = {
    enable = true;
    # package = pkgs.bluez;
    powerOnBoot = true;
  };
}