sqreven :: [Int]->[Int]
sqreven []=[]
sqreven (x:xs)
    |null xs=[x]
    |otherwise = x:y*y:sqreven (tail xs)
    where y=head xs

main :: IO ()
main = do
    print(sqreven [1,2,3,4,5])
    print(sqreven [1,2,3,4])
    print(sqreven [])


