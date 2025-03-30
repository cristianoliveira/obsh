{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "obsh";
  version = "0.0.1";

  src = ./.;

  buildInputs = with pkgs; [
    bash
    gnused
  ];

  installPhase = ''
    mkdir -p $out/bin
    ${pkgs.gnused}/bin/sed 's|\#!.*bash|\#!${pkgs.bash}/bin/bash|' obsh > $out/bin/obsh
    chmod +x $out/bin/obsh
  '';

  meta = {
    description = "A obsidian obsh client";
    license = pkgs.lib.licenses.mit;
    maintainers = with pkgs.lib.maintainers; [ 
      cristianoliveira
    ];
  };
}

