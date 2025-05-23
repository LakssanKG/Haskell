oddsqr []=[]
oddsqr (x:xs)
    |null xs=[x*x]
    |otherwise= x*x:head xs:oddsqr (tail xs)

evensqr []=[]
evensqr (x:xs)
    |null xs=[x]
    |otherwise=x:y*y:evensqr (tail xs)
    where y=head xs


main :: IO ()
main = do
    print(oddsqr [1,2,3,4,5])
    print(evensqr [1,2,3,4,5])

