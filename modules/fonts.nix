{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    nerd-fonts.mononoki
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
  ];
}
