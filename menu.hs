
strtoint x=read x::Int

add x y=x+y
sub x y=x-y
mul x y = x*y
divi x y=fromIntegral x/ fromIntegral y
main = do
    print("enter the number 1")
    a<-getLine
    let num1=strtoint a
    print("enter the number 2")
    b<-getLine
    let num2=strtoint b
    print("1 for add 2 for sub 3 for mul 4 for div")
    c<-getLine
    let ch=strtoint c
    if ch==1 then
        print(add num1 num2)
    else if ch==2 then
        print(sub num1 num2)
    else if ch==3 then
        print(mul num1 num2)
    else if ch==4 then
        print(divi num1 num2)
    else
        print("invalid option")