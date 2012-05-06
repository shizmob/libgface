{-# LINE 1 "src/Gface.hsc" #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LINE 2 "src/Gface.hsc" #-}
module Gface where
import Foreign.C
import System.IO.Unsafe
import Prelude hiding (init)


{-# LINE 8 "src/Gface.hsc" #-}

foreign import ccall unsafe "gface/gface.h gface_init"
    c_init :: CString -> CInt

foreign import ccall unsafe "gface/gface.h gface_acquire"
    c_acquire :: IO CWString

foreign import ccall unsafe "gface/gface.h gface_shutdown"
    c_shutdown :: IO ()

init :: String -> IO Bool
init l = case c_init . unsafePerformIO . newCString $ l of
    0 -> return False
    1 -> return True

acquire :: IO String
acquire = peekCWString =<< c_acquire

shutdown :: IO ()
shutdown = c_shutdown