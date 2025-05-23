mytake :: (Integral i)=>i->[a]->[a]
mytake n (x:xs)
    |n==0 = []
    |otherwise = x:mytake (n-1) xs

main :: IO ()
main = do 
    print(mytake 3 [1,2,3,4,5])