fact 0=1
fact n = n*fact(n-1)

mylen []=0
mylen (x:xs)=1+mylen xs

maxrec [x]=x
maxrec (x:xs)
    |x>maxtail=x
    |otherwise =maxtail
    where maxtail = maxrec xs

myreverse []=[]
myreverse (x:xs)=myreverse xs ++[x]

bmi x y
    |bmi<10="bmi less than 10"
    |bmi<20="bmi less than 20 greater than 10"
    |otherwise = "otherwise" 
    where bmi=x*y

main = do
    print(fact(5))
    print(mylen [1,2,3,4,5])
    print(bmi 20 0)
    print(maxrec [1,2,3,4,55,6])
    print(myreverse [1,2,3,4,5])