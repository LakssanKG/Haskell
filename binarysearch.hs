import Data.List (sort)

binarysearch :: (Integral a)=>[a]->a->Bool
binarysearch [] _ = False
binarysearch xs target=
    let mid=length xs `div` 2
        midvalue= xs !! mid
    in if target==midvalue
        then True
        else if target<midvalue
            then binarysearch (take mid xs) target
            else binarysearch (drop (mid+1) xs) target

main :: IO ()
main = do
    let input = sort [5, 3, 8, 6, 2, 7, 4, 1]
    let target = 6
    print (binarysearch input target)
    let target2 = 10
    print (binarysearch input target2)
