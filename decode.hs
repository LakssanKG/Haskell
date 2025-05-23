decode :: [(a,Int)]->[a]
decode []=[]
decode ((x,n):xs) = replicate n x ++ decode xs

main :: IO ()
main = do
    let input = [('a',4),('b',1),('c',2),('a',2),('d',1),('e',4)]
    print (decode input)