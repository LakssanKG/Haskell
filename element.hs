myelement :: (Integral a)=>a->[a]->Bool
myelement a []=False
myelement a (x:xs)
    |a==x=True
    |otherwise=myelement a xs

main :: IO ()
main = do
    print(myelement 21 [1,2,3,4,5])