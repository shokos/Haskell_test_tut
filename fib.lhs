インポート

> import Test.QuickCheck
> import Control.Applicative

フィボナッチ数列つくる

> fib :: [Int]
> fib = 1 : 1 : zipWith (+) fib (tail fib)

性質チェック

> prop_fib x = (fib !! x) == (fib !! (x-1)) + (fib !! (x-2))

> main = quickCheck $ forAll ((min 100 <$> max 2 <$> arbitrary) :: Gen Int) prop_fib

