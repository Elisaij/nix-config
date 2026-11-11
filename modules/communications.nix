{ pkgs, config, ... }:

{
  environment.systemPackages = [
    pkgs.slack
    pkgs.discord
    pkgs.zoom-us
    pkgs.teams-for-linux
    pkgs.signal-desktop
  ];
}
