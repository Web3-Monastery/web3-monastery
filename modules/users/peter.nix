{ ... }:

let
  username = "peter";
  hashedPassword = "$y$j9T$9x/UcVeGMmD9dBINipPqR/$D9OAfBQ3lQ83h2FJ4qIsGNLc14zsPQsI/Q67vaM21U3";
  keys = [
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBIo4B7eTpgx1pB4/WjrDjjWbq07Yuq1OujiKl6EWPPLjXFmuCZ0ha7AvcJYARfG7ClOC1gXKXp8alZXooTVc5SU= PeterFlynn-OP7Pro"
    "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBC4eSw2cFIGWa5VIhnOrVDam46QRZVkwrEs19RllAcaxhBzZted0HfSs3AxcEQGIZPv00GDu4qypatTv5qZMuaw= MNNC-PeterFlynn-G16"
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
