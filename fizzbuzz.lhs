コメント書き放題

fizzbuzzつくるよー！

\begin{code}

import Test.QuickCheck
import Control.Applicative

fizz = cycle ["", "", "fizz"]
buzz = cycle ["", "", "", "", "buzz"]

fizzbuzz = zipWith fb' [1..100] $  zipWith (++) fizz buzz
  where
    fb' n a | a == "" = show n
            | otherwise = a
\end{code}

