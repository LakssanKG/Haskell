consecdupli :: (Eq a)=>[a]->[[a]]
consecdupli []=[]
consecdupli [x]=[[x]]
consecdupli (x:y:xs)
    |x==y = let (first:rest) = consecdupli (y:xs)
        in (x:first):rest
    |otherwise = [x]:consecdupli (y:xs)
    
main :: IO ()
main = do
    let input = "aaaabccaadeeee"
    print (consecdupli input)
    

