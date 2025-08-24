{ pkgs, ... }:
{
  users.users.merki = {
    isNormalUser = true;
    description = "merki";
    extraGroups = [ "networkmanager" "wheel" "input" ];
    packages = with pkgs; [];
  };
}
