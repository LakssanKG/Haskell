mullist :: (Num a)=>([a],[a])->[a]
mullist (a,b) = [x * y|(x,y)<-zip a b]

main :: IO ()
main=do
    print(mullist ([1,2,3],[4,5,6]))


