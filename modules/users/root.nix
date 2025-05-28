{ ... }:

{
  users.users.root = {
    hashedPassword = "$6$wZ8vPEsy.hPhN2EP$8tueTG/cH8YTBG4ZTP/DgJ5Gtyyb2jTNYGoQ.O1HZQUOQyRn7Yn6Cl5EOLihqE/ERD1fPJY9Y.HK4ABwUhWBb.";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG0MiD5bEMG19uW09YutxhWwlxUdEyunIrSihm2E6wTq SADFrancis@gmail.com"
    ];
  };
}