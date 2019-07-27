{-# LANGUAGE QuasiQuotes #-}

module Lib
    ( process
    ) where

import           Control.Lens.Operators ((%~), (^..), (&))
import           Control.Lens.Regex     (match, regex, rx)
import qualified Data.Text              as T

process :: T.Text -> T.Text
process txt = txt & regex [rx|\b\w+|] . match %~ T.intersperse '-' . T.toUpper
