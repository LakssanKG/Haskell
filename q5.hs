import Data.Char (isDigit)

fil3 xs=filter isDigit xs

fil2 xs =[fil3 x|x<-xs]
main =do
    print(fil2 ["Helllo12","b34","dd00"])