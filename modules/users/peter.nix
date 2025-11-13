{ ... }:

let
  username = "peter";
  hashedPassword = "$y$j9T$9x/UcVeGMmD9dBINipPqR/$D9OAfBQ3lQ83h2FJ4qIsGNLc14zsPQsI/Q67vaM21U3";
  keys = [
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBLn5IE0UXy/ChgVw0IRMsnkRtjmWEfOek51+aRrmwEDHwK70nw8ZN8EUvO5BdP130olimvvmkP8iH5A88qRx2nA= PeterFlynn-OP7Pro"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHLdOh3YaKS16zF7SgOLjZOif8YEgnx4A884JsFdZSgz peter@PeterFlynn-Server"
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFPdiSj861D1jYQY7WrSHrrUBupP6J8KL7yfg2iKAo3wa/h6tEyBY5NHjP1kSS8S73Z5PjoHhPi3OM9RzA2lZZo= PeterFlynn-Dev"
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
