splitat n xs= (takeWhile(/=n) xs,dropWhile(/=n) xs)

main = do
    print(splitat 6 [1,2,3,4,5])