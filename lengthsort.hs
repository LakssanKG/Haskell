import Data.List (sortBy)
import Data.Ord (comparing)

sortByLength :: [String] -> [String]
sortByLength = sortBy (comparing length)

main :: IO ()
main = do
    let input = ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
    let sorted = sortByLength input
    print sorted
