module Main

import Filter

x : Term String
x = T Eq "name" "Germany"

main : IO ()
main = do
  putStrLn $ show x
  putStrLn $ show $ negateTerm x
