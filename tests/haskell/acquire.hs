import qualified Gface

main :: IO ()
main = do
    Gface.init "LICENSE_KEY_HERE"
    putStrLn =<< Gface.acquire
    Gface.shutdown
