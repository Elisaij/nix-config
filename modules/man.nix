{ pkgs, ... }:

{
  documentation.dev.enable = true;
  documentation.man.cache.enable = true;

  environment.variables.MANWIDTH = "100";

  environment.systemPackages = with pkgs; [
    man-pages
    man-pages-posix
  ];
}
