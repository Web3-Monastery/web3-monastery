{ ... }:

let
  username = "yikes";
  hashedPassword = "$y$j9T$gAyu3JKujevqFSubmzAqO0$oYwKgUrqG7CdjRQcwK7uqMqu1zifJ7vp1x0zQO1F/DA";
  keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAFtoX1+NPi/e/85ieWAplxCIXSGLs/RbrQ3mld2kJSk+etnSn0hYmZHirXXyyp13BRh4fMVufvjnsiJpIBbMb1sJ87M2NhWQu81kmSYoM3rxKIrvAkrLXmFi9MeFrbYj0B92d4OAGLvSTea+Q3e4eB/NZMg1nvve2hmzqrLKc50+rrfCR7RDHYP21KfuL5TNrEjBWHSSce/HgJAIahcbC6QXDcr3lMS++WjKGXHykloF8aWiNq7J5AzXNt4/aLJH+hJtg0SE/QtpxLTczmaezYzYlmb+VoeSwmBEGx15NaTmLzgWvBTgw/Y2oBpPGYPcoMfEwbLKANMaCOEotzTaAoouBLG2EmNdz42Wj+gWYsbbU3ETQEq0MXBK7xsdmh9j4LdpbbGwMJtcZ+GHZ3PaomrmS4EBeyB7MPq3ylc6P3TOgwCfirWvxTEgcodCFxQflLsnB4Lj9kPQzbnl9OLl+8rlkPPfnqdGgY2TaEiu81I2e4glJ0mwXe8rNuEKyRlJ3Q7drlJ8PL3JdGIWc/GFmZXBqprRDQpf2Dz+bECCHsn36NR6VQHD+R7ueNjY4iffuo7RGAKCm2pdn54wbzXyAbsGHWOi6swVs4a1LHH6AN4ND1/a2XjV1TQdzHeeXAWd2Ow10AlHEDf5gHgusu7THpTrLpgoXU1BUs+TZnXLw4w== spywarezzz@proton.me"
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
