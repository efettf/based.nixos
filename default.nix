inputs: {
  pkgs,
  ...
}: {
  config = {
    # Enable wi-fi support via network manager.
    networking.networkmanager.enable = true;

    # Enable flakes and nix command.
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Disable nano, you can get it back using 'nix-shell -p nano'.
    programs.nano.enable = false;

    security = {
      doas.enable = true;

      environment.systemPackages = [
        (pkgs.writeScriptBin "sudo" ''exec doas "$@"'')
      ];

      sudo.enable = false;

      # Removes password prompts for your wheel group,
      # you can manage user groups below at '[users.users.*]'.
      doas.wheelNeedsPassword = false;
    };
  };
}
