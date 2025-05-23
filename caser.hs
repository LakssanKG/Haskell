import Data.Char (ord,chr)

caser ch
    |ch>='a' && ch<='z' = chr(((ord ch - ord 'a' +3) `mod` 26)+ord 'a')

main=do
    print(filter (\x->not ((/=31) x)) [1,2,3,4,5,6,7,8,9])
