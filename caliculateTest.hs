import Test.HUnit

--テストしたい関数
plus :: Int -> Int -> Int
plus x y = x + y

minus :: Int -> Int -> Int
minus x y = x - y

--assertの配列
caliculateTests :: [Test]
caliculateTests = map TestCase
    [ assertEqual "plus 1 2" 3 (plus 1 2)
     ,assertEqual "minus 5 3" 2 (minus 5 3)
    ]

--testをする関数
runTests :: [Test] -> IO Counts
runTests ts = runTestTT $ TestList ts

--main
main :: IO Counts
main = runTests caliculateTests
