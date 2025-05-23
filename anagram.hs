import Data.List (sort)

anagram::String->String->Bool
anagram a b = sort a==sort b

findpairs :: [String]->[(String,String)]
findpairs []=[]
findpairs (x:xs) = [(x,y)|y<-xs,anagram x y]++findpairs xs

main :: IO ()
main = do
    print(findpairs ["rama","ram","amar","xox","oxx"])