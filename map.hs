map1 f []=[]
map1 f (x:xs)=f x:map1 f xs

filter1 f []=[]
filter1 f (x:xs)= if f x then x:filter1 f xs else filter1 f xs 

zip1 [] _=[]
zip1 _ []=[]
zip1 (x:xs) (y:ys)=(x,y):zip1 xs ys

zipWith1 f (x:xs) (y:ys)= f x y:zipWith1 f xs ys
zipWith1 f _ _ =[]

myreplicate 0 _=[]
myreplicate n x=x:myreplicate (n-1) x

main = do
    print(map1 odd [1,2,3,4,5,6,7,8,9,10])
    print(filter1 odd [1..10])
    print(zip1 [1..4] [2..5])
    print(zipWith1 (+) [1..4] [2..5])
    print(init [1..10])
    print(sum [1..10])
    print(product [1..10])
    print(maximum [1..10])
    print(4 `elem` [1..10])
    print(replicate 3 10)
    print(myreplicate 3 10)