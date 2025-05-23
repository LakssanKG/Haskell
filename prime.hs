prime :: Int->Bool

prime a = (length [x|x<-[1..a],a `mod` x==0])==2


main :: IO ()
main = do
    print(prime 12)
