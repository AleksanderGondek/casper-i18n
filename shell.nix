{ pkgs ? import <nixpkgs> {}, ... }:
pkgs.mkShell {
  name = "casper-18n-shell";

  buildInputs = with pkgs; [
    bashInteractive
    cacert
    coreutils-full
    curlFull
    git
    gnutar
    pkg-config
    nodejs
    openssl
    yarn
    zip
    helix
  ];

  shellHook = ''
    echo "casper-18n dev shell."
    export PATH="$(pwd)/node_modules/.bin/:$PATH"
  '';
}
