main = do
    print $ myReverse [1, 2, 3]


myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]