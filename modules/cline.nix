{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.programs.cline;
in {
  options.programs.cline = {
    enable = mkEnableOption "Cline autonomous coding agent";

    package = mkOption {
      type = types.package
      default = pkgs.cline or (pkgs.callPackage ./package.nix { });
      description = "The Cline package to use.";
    };

    extraPackages = mkOption {
      type = types.listOf types.package
      default = with pkgs; [ ripgrep git ];
      description = "Extra tools required by Cline (e.g., ripgrep, git) to operate on codebases.";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ cfg.package ] ++ cfg.extraPackages;
    
    # You can add environment variables or persistent state paths here if needed
    home.sessionVariables = {
      CLINE_CONFIG_DIR = "${config.xdg.configHome}/cline";
    };
  };
}
