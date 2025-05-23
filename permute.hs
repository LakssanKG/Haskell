permutations [] =[[]]
permutations xs=[y:zs|(y,ys)<-select xs,zs<-permutations ys]
    where
        select []=[]
        select (y:ys)=(y,ys):[(x,y:zs)|(x,zs)<-select ys]

main = do
    print(permutations [1,2,3])