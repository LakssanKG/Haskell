myreplicate :: (Num i,Ord i)=> i->a->[a]
myreplicate n a
    |n==0 =[]
    |otherwise= a:myreplicate (n-1) a

main :: IO ()
main = do
    print (myreplicate 3 5)






