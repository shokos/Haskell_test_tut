import Test.QuickCheck

--ŽÀ‘•ŠÖ”‚ð’è‹`
mySum :: [Int] -> Int
mySum xs = mySum' 0 xs
    where
        mySum' acc [] = acc
        mySum' acc (x:xs) = mySum' (acc + x) xs

prop_Sum xs = mySum xs == sum xs
    where
        types = xs :: [Int]
