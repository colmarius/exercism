module Bob exposing (..)

import Regex exposing (regex)

hey : String -> String
hey phrase =
  if isBlank phrase
  then
    "Fine. Be that way!"
  else if isWord phrase == False
  then
    "Whatever."
  else if String.toUpper phrase == phrase
  then
    "Whoa, chill out!"
  else if String.endsWith "?" phrase
  then
    "Sure."
  else
    "Whatever."

isBlank : String -> Bool
isBlank string =
    Regex.contains (regex "^\\s*$") string

isWord : String -> Bool
isWord string =
    Regex.contains (regex "^\\w*$") string

isNonWord : String -> Bool
isNonWord string =
    Regex.contains (regex "^\\W*$") string
