{ pkgs }:

pkgs.python3Packages.buildPythonPackage {
  pname = "mcp-server-git";
  version = "0.6.2";
  src = ./.;

  build-system = [
    pkgs.python3Packages.hatchling
  ];

  dependencies = with pkgs.python3Packages; [
    click
    gitpython
    mcp
    pydantic
  ];

  pyproject = true;
}
