{
  description = "Building separate machines";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvim.url = "gitlab:ljfolde/nvim";
  };


  outputs = { nixpkgs, ... } @inputs:
  {
    nixosConfigurations.thinkpad = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
      ];
    };
  };
}

