{ inputs, pkgs, ... }:

{
  environment.systemPackages = [
    inputs.nvim.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  environment.variables.EDITOR = "nvim";
  environment.variables.MANPAGER = "nvim +Man!";
}

