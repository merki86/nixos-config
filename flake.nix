{
  description = "My nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs }: {
    let
      username = "merki";
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      nixosConfigurations.nixos = pkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
            ./configuration.nix
        ];
      };

      homeConfigurations.merki = home-manager.lib.homeManagerConfiguration {
        pkgs = pkgs.legacyPackages.${system};
        modules = [
          ./home.nix
        ];
      };
    }
  }
}
