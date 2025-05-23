
sumsqr = filter(filter odd ( map(^2) [1..100]))

main :: IO ()
main = do
    print(sumsqr)