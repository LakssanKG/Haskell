remov xs = filter (`notElem` "aeiouAEIOU") xs

removeVowelsFromList xs= [remov x|x<-xs]

main = do
    print(removeVowelsFromList ["Hello", "World", "How", "Are", "You"]) 