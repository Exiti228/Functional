data Tree = Nil | Node Char Tree Tree deriving (Show, Eq)

dop a b
      | a == b = [(b,b)]
      | otherwise = [(a,b),(b,a)] 
      
balTree 0 = [Nil]
balTree 1 = [Node 'x' Nil Nil]
balTree 2 = [Node 'x' Nil (Node 'x' Nil Nil), Node 'x' (Node 'x' Nil Nil) Nil]
balTree n = [Node 'x' l r | (k1,k2) <- dop a1 a2, l <-balTree k1, r <- balTree k2] where
    a1 = div t 2
    a2 = div t 2 + mod t 2
    t = n-1

main = print $ show (balTree 2)