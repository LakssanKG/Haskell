encode :: (Eq a)=>[a]->[[Int]]
encode []=[]
encode [x]=[[1]]
encode (x:y:xs)
    |x==y = let (first:rest)=encode (y:xs)
        in [sum (1:first)]:rest
    |otherwise =[1]:encode(y:xs)

main :: IO ()
main = do
    let input = "aaaabccaadeeee"
    print (encode input)

    