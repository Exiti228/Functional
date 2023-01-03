main = do
    print $ repli "test" 3


repli :: [b] -> Int -> [b]
repli [] _ = []
repli _ 0 = []
repli (x:xs) n = x : repli [x] (n-1) ++ repli xs n