module Paths_main (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,0,0,1] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/opt/app/src/.stack-work/install/x86_64-linux/lts-5.17/7.10.3/bin"
libdir     = "/opt/app/src/.stack-work/install/x86_64-linux/lts-5.17/7.10.3/lib/x86_64-linux-ghc-7.10.3/main-0.0.0.1-7uSWnMoA1pIGGz5pxDfZRG"
datadir    = "/opt/app/src/.stack-work/install/x86_64-linux/lts-5.17/7.10.3/share/x86_64-linux-ghc-7.10.3/main-0.0.0.1"
libexecdir = "/opt/app/src/.stack-work/install/x86_64-linux/lts-5.17/7.10.3/libexec"
sysconfdir = "/opt/app/src/.stack-work/install/x86_64-linux/lts-5.17/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "main_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "main_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "main_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "main_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "main_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
