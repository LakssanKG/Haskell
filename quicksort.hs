prime :: Int->Bool
prime a = (length [x|x<-[1..a],a `mod` x==0])==2

quicksort :: (Integral a)=>[a]->[a]
quicksort []=[]
quicksort (x:xs)=
    let smaller = quicksort((filter (<=x) xs))
        bigger = quicksort((filter (>x) xs))
    in smaller ++[x]++bigger

kthelement :: Int->[a]->a
kthelement n (x:xs)
    |n==0=x
    |otherwise = kthelement (n-1) xs


main :: IO ()
main = do
    let input=[4,2,6,1,4]
    let s=quicksort input
    let middle=kthelement (length s `div` 2) s
    print (prime middle)
    

