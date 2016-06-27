{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( someFunc
    ) where


import Data.Attoparsec.Text
import Data.Text
import Debug.Trace
import Data.Monoid
import Control.Applicative ((<|>))


type Level = [Line]
type Line = Text

parseLevel :: String -> Either String Level
parseLevel l = parseOnly levelParser (pack l)

LevelParser :: Parser Level
LevelParser = many LineParser

LineParser :: Parser Line
LineParser = do
             e <- atEnd
             when e $ fail "no more lines"




             endOfLine <|> endOfInput


--player :: 

--wall ::

--box ::

--guard ::

--passage ::
--
--emptyPassage ::
--
--chipCard ::
--
--key ::
--
--door ::
--
--forceField ::
--
--
--pitTrap ::
--
--tile ::
--
--level ::
--
--guardTurn ::
--
--playerGoal ::







someFunc :: IO ()
someFunc = putStrLn "someFunc"








