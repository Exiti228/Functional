main = do
    print $ getLength "test"

getLength           :: [a] -> Int
getLength []        =  0
getLength (_:xs)    =  1 + getLength xs