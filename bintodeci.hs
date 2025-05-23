import Data.List (sort)

bintodeci xs = sum[2^i|(c,i)<-zip (reverse xs) [0..],c=='1']

decitobin n=reverse (helper n)
    where
        helper 0=[]
        helper x=(x `mod` 2):helper (x `div` 2)
main = do
    print(bintodeci "1101")
    print(decitobin 13)
    print(sort [1,2,4,3,12,4])