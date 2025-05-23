mergesort :: (Integral a)=>[a]->[a]
mergesort []=[]
mergesort [x]=[x]
mergesort xs=
    let (left,right)=splitAt (length xs `div` 2) xs
    in merge (mergesort left) (mergesort right)
    
merge :: (Integral a)=>[a]->[a]->[a]
merge xs []=xs
merge [] ys=ys
merge (x:xs) (y:ys)
    |x<=y = x:merge xs (y:ys)
    |otherwise = y: merge (x:xs) ys
    
main :: IO ()
main = do
    print(mergesort [2,4,6,2,1])
