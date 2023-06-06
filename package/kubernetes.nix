{python311Packages}:
with python311Packages;
kubernetes.overridePythonAttrs(old: rec {
                  version = "22.6.0";
                  doCheck = false;
                  src =  fetchPypi {
                    pname = "kubernetes";
                    inherit version;
                    hash = "sha256-hXivoP1OfobPpO7sIE5LrYosEJzlL4X488WT6bDUeWA=";
                  };
                })
