main = do
    print([1..9])
    print(odd 9)
    print(head [1,2,3,4,5])
    print(tail [1,2,3,4,5])
    let x=[1..9]
    print([(xs,xss)|xs<-x,even xs,xss<-[1..9]])
    print([x|x<-[50..100],x `mod` 7==3])
    print([if x<10 then "boom" else "bang"|x<-[7..13],odd x])
    print([x|x<-[10..20],x/=13,x/=15,x/=19])
    print([(x,y,z)|x<-[1..15],y<-[1..15],z<-[1..15],x*x+y*y==z*z])
    let y=(takeWhile (/=10) x , dropWhile (/=10) x)
    print(y)
    print(map odd [1,2,3,4,5])
    print(map (\a->a*5) [1,2,3])
    