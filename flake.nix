{
  description = "Obsh flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { nixpkgs, utils, ... }: 
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            bash
            gnused
          ];
        };

        packages = {
          default = pkgs.callPackage ./default.nix {
            inherit pkgs;
          };
        };
    });
}
