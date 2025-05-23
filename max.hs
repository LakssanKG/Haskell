maxrec :: (Ord a)=>[a]->a
maxrec [x]=x
maxrec (x:xs)=
    let maxtail= maxrec xs
    in if x>maxtail then x else maxtail

main :: IO()
main=do
    print(maxrec [1,23,3,4,5])