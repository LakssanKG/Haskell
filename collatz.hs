collatz ::(Integral a)=> a->[a]
collatz 1 =[1]
collatz x
    |x `mod` 2==0 = x:collatz (x `div` 2)
    |otherwise = x: collatz (x*3+1)

main :: IO ()
main = do
    print(collatz 30)