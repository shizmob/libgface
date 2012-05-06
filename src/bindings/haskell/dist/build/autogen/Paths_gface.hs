module Paths_gface (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch


version :: Version
version = Version {versionBranch = [0,1,0,0], versionTags = []}
bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/oupk/.cabal/bin"
libdir     = "/home/oupk/.cabal/lib/gface-0.1.0.0/ghc-7.4.1"
datadir    = "/home/oupk/.cabal/share/gface-0.1.0.0"
libexecdir = "/home/oupk/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catchIO (getEnv "gface_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "gface_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "gface_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "gface_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
