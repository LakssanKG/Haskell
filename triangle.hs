
utriangle xs =[ sum(drop(n+1) x) | (x,n)<-zip xs [0..]]
ltriangle xs=[sum(take n x)|(x,n)<- zip xs [0..]]
issquare xs=all (\row->length row == length xs) xs
main = do
    let u=utriangle [[1,0,0],[1,4,0],[3,4,6]]
    let l=ltriangle [[1,2,3],[0,4,5],[0,0,6]]
    let mat = [[1,0,0],[1,4,0],[3,4,6],[1,2,3]]
    print (issquare mat)
    if sum u ==0 then
        print("upper")
    else
        return()
    
    if sum l ==0 then
        print("lower")
    else
        return ()
