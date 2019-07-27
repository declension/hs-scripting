module Main where

import           Control.Monad      (guard, liftM)
import qualified Data.Text          as T
import qualified Data.Text.IO       as TIO
import           Lib
import           System.Environment (getArgs)
import Control.Arrow ((>>>))

main :: IO ()
main = do
    args <- getArgs
    guard (not . null $ args)
    let results = (head >>> T.pack >>> process) args
        text = results
    TIO.putStrLn text
