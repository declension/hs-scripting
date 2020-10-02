#!/usr/bin/env stack
{- stack --resolver lts-16.6 script
         --package text
         --package lens
         --package lens-regex-pcre
-}
{-# LANGUAGE QuasiQuotes #-}

module Main where

import           Control.Arrow          ((>>>))
import           Control.Lens.Operators ((%~), (&), (^..))
import           Control.Lens.Regex     (match, regex, rx)
import           Control.Monad          (guard, liftM)
import qualified Data.Text              as T
import qualified Data.Text.IO           as TIO
import           System.Environment     (getArgs)

process :: T.Text -> T.Text
process txt = txt & regex [rx|\b\w+|] . match %~ T.intersperse '-' . T.toUpper

main :: IO ()
main = do
    args <- getArgs
    guard (not . null $ args)
    let results = (head >>> T.pack >>> process) args
        text = results
    TIO.putStrLn text
