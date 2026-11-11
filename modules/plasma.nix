{ ... }:

{
  services.xserver.enable = true;

  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  console.keyMap = "no";

  services.printing.enable = true;

  services.xserver.xkb = {
    layout = "no";
    variant = "";
    options = "lv3:caps_switch";
  };

  environment.etc."xdg/kwinrc".text = ''
    [Wayland]
    EnablePrimarySelection=false
  '';
}
