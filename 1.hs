strtoint :: String->Int
strtoint x = read x :: Int

add :: Int->Int->Int
add x y = x+y

sub ::Int->Int->Int
sub x y = x-y

main = do
    putStrLn("Enter number 1")
    a<-getLine
    let num1=strtoint a
    putStrLn("Enter number 2")
    b<-getLine
    let num2=strtoint b
    putStrLn("Enter 1 for add and 2 for subtract")
    c<-getLine
    let o=strtoint c
    if o==1
        then print(add num1 num2)
        else print(sub num1 num2)