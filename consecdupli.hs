consecdupli :: (Eq a)=>[a]->[a]
consecdupli []=[]
consecdupli [a]=[a]
consecdupli (x:y:xs)
    |x==y=consecdupli(y:xs)
    |otherwise= x:consecdupli(y:xs)

main :: IO ()
main = do
    let input = "aaaabccaadeeee"
    print (consecdupli input)

