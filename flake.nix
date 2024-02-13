{
  description = "Quartus CLI VHDL runner for DE1-SoC";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
    quartus = pkgs.quartus-prime-lite.override (old: {supportedDevices = ["Cyclone V"];});
  in rec {
    packages.x86_64-linux = rec {
      de1-gen = pkgs.writeShellScriptBin "de1gen" ''
        if test -f ./setup_project.tcl; then
          ${quartus}/bin/quartus_sh -t ./setup_project.tcl
        else
          echo "\nCould not find 'setup_project.tcl'. Are you in the correct directory?"
          exit 1
        fi
      '';
      de1-map = pkgs.writeShellScriptBin "de1map" ''
        if test -f ./project.qpf && test -f ./project.qsf; then
          ${quartus}/bin/quartus_map project
        else
          echo "\nMust generate the project before running this."
          exit 1
        fi
      '';
      de1-fit = pkgs.writeShellScriptBin "de1fit" ''
        if test -f ./project.map.rpt; then
          ${quartus}/bin/quartus_fit project
        else
          echo "\nMust run map before fitting."
          exit 1
        fi
      '';
      de1-asm = pkgs.writeShellScriptBin "de1asm" ''
        if test -f ./project.map.rpt; then
          ${quartus}/bin/quartus_asm project
        else
          echo "\nMust fit before assembling."
          exit 1
        fi
      '';
      de1-pgm = pkgs.writeShellScriptBin "de1pgm" ''
        if test -f ./project.sof; then
          ${quartus}/bin/quartus_pgm -m JTAG -o "s;SOCVHPS@1" -o "p;project.sof;5CSEMA5F31@2"
        else
          echo "\nMust assemble before programming."
          exit 1
        fi
      '';
      de1-make = pkgs.writeShellScriptBin "de1make" ''
        echo "Compiling project..."
        if ${de1-gen}/bin/de1gen && ${de1-map}/bin/de1map && ${de1-fit}/bin/de1fit && ${de1-asm}/bin/de1asm; then
          echo "\nCompiled project successfully, flash it with 'de1pgm'."
          exit 0
        else
          echo "\nCompile failed."
          exit 1
        fi
      '';
      de1-flash = pkgs.writeShellScriptBin "de1flash" ''
        ${de1-make}/bin/de1make && ${de1-pgm}/bin/de1pgm
      '';
    };
    devShells.x86_64-linux = {
      default = pkgs.mkShell {
        packages =  with packages.x86_64-linux; [
          quartus
          de1-gen
          de1-map
          de1-fit
          de1-asm
          de1-pgm
          de1-make
          de1-flash
        ];
      };
    };
  };
}
