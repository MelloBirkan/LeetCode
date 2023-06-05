//: [Previous](@previous)

//For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times). Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    var greatestCD = ""
    var flag = false
    var repetition = 0
    
    if str1.count > str2.count {
            
            for char in 0..<str1.count {
                var index = str1.index(str1.startIndex, offsetBy: char)
                
                if str1.count > char && str2.count > char {
                    if str1[index] == str2[index] {
                        let temp = str1[index]
                        
                        if (greatestCD.count == 0) {
                            greatestCD.append(temp)
                            
                        } else {
                            for i in 0..<greatestCD.count{
                                
                                if  (str1[index] == greatestCD[greatestCD.index(greatestCD.startIndex, offsetBy: i)]) {
                                    flag = true
                                }
                            }
                            if !flag { greatestCD.append(temp) }
                        }
                    }
                }
            }
            
        }
    }
    return greatestCD
}



print(gcdOfStrings("ABCDEF", "ABC"))
//: [Next](@next)
