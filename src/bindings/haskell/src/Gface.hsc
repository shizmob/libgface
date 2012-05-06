{-# LANGUAGE ForeignFunctionInterface #-}
module Gface (init, acquire, shutdown) where
import Foreign.C
import System.IO.Unsafe (unsafePerformIO)
import Prelude hiding (init)

#include <gface/gface.h>

foreign import ccall unsafe "gface/gface.h gface_init"
    c_init :: CString -> IO CInt

foreign import ccall unsafe "gface/gface.h gface_acquire"
    c_acquire :: IO CWString

foreign import ccall unsafe "gface/gface.h gface_shutdown"
    c_shutdown :: IO ()

init :: String -> IO Bool
init l = do
    r <- c_init =<< newCString l
    return $ case r of
        0 -> False
        1 -> True

acquire :: IO String
acquire = peekCWString =<< c_acquire

shutdown :: IO ()
shutdown = c_shutdown
