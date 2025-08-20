{ pkgs, ... }:
{
  users.users.merki = {
    isNormalUser = true;
    description = "merki";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}