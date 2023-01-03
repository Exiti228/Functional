main = do
  print (paths 1 4  [(1,2),(2,3),(1,3),(3,4)])

paths :: Eq b => b -> b -> [(b, b)] -> [[b]]
paths a b c
    | a == b = [[b]]
    | otherwise = [
        a:path | edge<-c, (fst edge) == a,
        path<-(paths (snd edge) b [c|c<-c, c/=edge])]