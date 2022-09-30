data Root = Two Double Double | One Double | No deriving Show
 
solve :: Double -> Double -> Double -> Root
solve a b c | (d < 0.0) || (a == 0) = No
            | d > 0.0 = (Two (((-b) + (sqrt d))/(2.0*a)) (((-b) - (sqrt d))/(2.0*a)))
            | otherwise = (One ((-b)/(2.0*a)))
              where d=b*b-4.0*a*c
main = do
    a <- getLine
    b <- getLine
    c <- getLine
    print $ solve (read a :: Double) (read b :: Double) (read c :: Double)