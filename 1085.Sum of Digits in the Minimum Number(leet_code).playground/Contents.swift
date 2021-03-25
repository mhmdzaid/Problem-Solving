
func findSmallestNum(_ s : Int ,_ d : Int) -> Int{
    var res : [Int] = [Int](repeating: 0, count: d)
    var sum = s
    if s > 9 * d {
        fatalError("not possible")
    }
    
    sum -= 1
    
    var i = d-1
    
    while i > 0{
        if sum > 9{
           res[i] = 9
           sum -= 9
        }else{
           res[i] = sum
            sum = 0
        }
        i -= 1
    }
    
    res[0] = 1
    
    return Int(res.map({return "\($0)"}).joined()) ?? 0
    
}
