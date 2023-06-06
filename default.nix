{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell rec {
   packages = with pkgs; [
      go
      git
      kubectl
      kubernetes-helm
      kind
      (builtins.getFlake "/opt/acto-nix/").packages.x86_64-linux.default
   ];
}
