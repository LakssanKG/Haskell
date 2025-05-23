palli :: (Eq a)=>[a]->Bool
palli []=False
palli [_]=True

palli (x:xs)
    |x==last xs=palli (init xs)
    |otherwise =False

main = do
    print(palli [1,2,1,2,1])
