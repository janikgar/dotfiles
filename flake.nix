{
  description = "My shell.nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/?ref=25.11";
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
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
      ];
    };
  };
}