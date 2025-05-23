nextterm n
    |even n = n*n
    |otherwise = n*n*n
    
sequencee n
    |n>1000=[]
    |otherwise = n:sequencee (nextterm n)

main = do
    print(sequencee 3)