let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";

  pkgs = import nixpkgs {
    config = {};
    overlays = [];
  };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    vim
    git
    go
    python314
    nodejs_24
    yarn-berry
    kubectl
    localstack
    go-jsonnet
    zsh
    oh-my-zsh
    go-task
    nix-info
  ];
}