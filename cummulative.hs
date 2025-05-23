main = do
    let x=[maximum (take(i+1) [1,22,33,4,55])|i<-[0..4]]
    print(x)