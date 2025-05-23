main = do
    print(foldl1 (\a b ->if a>b then a else b)[1,2,3,4,5])
    print(foldl (\a b -> b:a)[] [1..5] )
    print(foldl1 (\a b->a*b) [1..5])
    print(foldl (\x acc->if odd acc then acc:x else x )[] [1..5] )
    print(foldr1 (\x _ ->x) [1..5] )
    print(foldl1 (\_ x ->x)[1..5])
    print(foldl1 (\a b->if a>b then print(a) else print(b)) [1,2,3,4,5] )