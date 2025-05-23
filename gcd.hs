gcdh :: Int->Int->Int
gcdh a b 
    |b==0 = a
    |otherwise = gcdh b (a `mod` b)

ziplist ::[Int]->[Int]->[Int]
ziplist xs ys =[gcdh a b| (a,b)<- zip xs ys]

main :: IO ()
main = do
    let list1 = [56, 42, 18]
    let list2 = [98, 28, 24]
    print(ziplist list1 list2)