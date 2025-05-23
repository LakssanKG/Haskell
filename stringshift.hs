import Data.Char (chr,ord)

charshift :: Char->Int->Char
charshift x n
    |x>= 'a' && x<='z'=chr(((ord x-ord 'a' + n)`mod` 26) + ord 'a')

stringshift ::String->Int->String
stringshift xs n =[charshift x n|x<-xs]

zipstring :: [String]->[Int]->[String]
zipstring xs ne =[stringshift x n|(x,n)<-zip xs ne]

main = do
    let input = ["abcde","sfa","gedew"]
    print (zipstring input [1,2,3])





