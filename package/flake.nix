{
  description = "Acto";

  outputs = { self, nixpkgs }: let system = "x86_64-linux"; acto = nixpkgs.legacyPackages.${system}.callPackage ./. {}; in {

    packages.x86_64-linux.acto = acto;

    packages.x86_64-linux.default = self.packages.x86_64-linux.acto;

  };
}
