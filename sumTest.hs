import Test.QuickCheck

--実装関数を定義
mySum :: [Int] -> Int
mySum xs = mySum' 0 xs
    where
        mySum' acc [] = acc
        mySum' acc (x:xs) = mySum' (acc + x) xs

prop_Sum xs = mySum xs == sum xs
    where
        types = xs :: [Int]
