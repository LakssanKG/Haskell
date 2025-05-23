import Data.Char 
import Data.List (sort)
{-prac f xs  = foldl (\acc x->acc ++ [f x]) [] xs  

prac1 f xs = foldr (\x acc -> [f x] ++ acc) [] xs

pracc  = foldl1 (\_ x->x)-}

separate xs = ( filter isDigit xs,filter (not .isDigit) xs)
space xs = [if x==' ' then ' ' else '*'|x<-xs]

fil fn x y n = map fn [x,x+n..y]
pana xs = panagram [if isUpper a then toLower a else a|a<-xs]
panagram xs =  all (`elem` xs) ['a'..'z']

isper n = sum [x| x<-[1..n-1],n `mod` x ==0 ] == n
applylistfun [] x =[]
applylistfun (f:fs) x= f x:applylistfun fs x
lensort []=[]
lensort (x:xs) = lensort [y|y<-xs,length y <= length x] ++ [x] ++ lensort [y|y<-xs,length y > length x]

countfreq []=[]
countfreq (x:xs) = (x,length(filter (==x) xs)+1):countfreq (filter (/=x) xs)
main = do 
    print(countfreq [1,32,32,1,2,3,5,5,5,5,3,1,1,45,2,45,3])


