{
  description = "XeroNix's Crazy Flakes";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
  };

  outputs = { self, nixpkgs, nix-flatpak, ... } @ inputs: let
    inherit (self) outputs;
  in {
    nixosConfigurations = {
      XeroNix = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs outputs;};
        modules = [
          nix-flatpak.nixosModules.nix-flatpak

          ./nixos/configuration.nix
        ];
      };
    };
  };
}
