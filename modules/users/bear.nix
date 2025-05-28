{ ... }:

let
  username = "bear";
  hashedPassword = "$y$j9T$2/Vl5yZRey9VQw1WM9MMK/$gqOlvfy1zjbWdhhG8grFb98uD4DElfdiSmOpFFNFk3B";
  keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIANX27TFHylCcTOnochdxT3L58Bjs5o1LCsi96QCeeKC petrichor@Mac.attlocal.net"
  ];
in {
  users.users.${username} = {
    inherit hashedPassword;
    isNormalUser = true;
    extraGroups = [ username "wheel" "adm" "http" "log" "sys" "systemd-journal" "users" ];
    openssh.authorizedKeys = { inherit keys; };
  };

  users.groups.${username} = {};
}
