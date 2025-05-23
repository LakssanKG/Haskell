import Data.List (sort)
lcs xs =findlcs xs 1 1
    where
        findlcs [] _ maxs=maxs
        findlcs [x] curr maxs=(max curr maxs)
        findlcs (x:y:ys) curr maxs
            |x+1==y = findlcs (y:ys) (curr+1) maxs
            |x==y = findlcs (y:ys) curr maxs
            |otherwise = findlcs (y:ys) 1 (max curr maxs)

main :: IO ()
main = do
    let input = sort [4, 2, 1, 6, 5, 9, 7, 8]
    print(input)
    print (lcs input)




