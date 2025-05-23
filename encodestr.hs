encode :: (Eq a)=>[a]->[(a,Int)]
encode []=[]
encode (x:xs)=(x,length (x: takeWhile(==x) xs)):encode (dropWhile(==x) xs)

main :: IO ()
main = do
    let input = "aaaabccaadeeee"
    print (encode input)
