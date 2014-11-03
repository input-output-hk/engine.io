{ cabal, aeson, engineIo, engineIoSnap, engineIoYesod, snapServer, snapCORS
, socketIo, stm, text, yesodStatic
}:

cabal.mkDerivation (self: {
  pname = "chat-example";
  version = "1.0.0";
  src = ./.;
  buildDepends = [
    aeson engineIo engineIoSnap engineIoYesod snapCORS snapServer socketIo text
    yesodStatic
  ];
  meta = {
    homepage = "http://github.com/ocharles/engine.io";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
