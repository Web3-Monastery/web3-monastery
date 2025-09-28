{ ... }:

let
  username = "domini";
  hashedPassword = "$6$kLIZlGOf5MaHKVEW$tn6NbE3cCthyjYj2kBFFJoXYuwlnjb9vPQTzKdSnBOFueZc88CLklyqqklQIqVg9WsjU6pOuQTXgvsyHdBKaa1";
  keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG0MiD5bEMG19uW09YutxhWwlxUdEyunIrSihm2E6wTq SADFrancis@gmail.com"
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
