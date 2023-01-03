main = do
    print $ insert 'Z' "abcdefgh" 3
insert :: b -> [b] -> Int -> [b]
insert d xs 1 = d:xs
insert d (x:xs) m = x: insert d xs (m-1)
    