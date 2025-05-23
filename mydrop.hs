mydrops n (x:xs)
    |n==0 =x:xs
    |otherwise=mydrops (n-1) xs


main = do
    print(mydrops 2 [1,2,3,4,5])