{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "archive-sig"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019 Vanessa McHale";
      maintainer = "rmourey_jr@blockchain-company.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Backpack signature for archive libraries";
      description = "Backpack signature that provide a common interface to the Haskell tar package and the Haskell libarchive bindings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."dir-traverse" or (errorHandler.buildDepError "dir-traverse"))
          ];
        buildable = true;
        };
      };
    }
