kthelement :: Int->[a]->a
kthelement n (x:xs)
    |n==0 = x
    |otherwise = kthelement (n-1) xs

main = do 
    print(kthelement 3 [1,2,3,4,5])
