    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        var merged = ""
        let length: Int
        
        if word1.count > word2.count {
            length = word1.count
        } else {
            length = word2.count
        }
        
        for i in 0..<length {
            if word1.count > i {
                merged.append(word1[word1.index(word1.startIndex, offsetBy: i)])
            }
            
            if word2.count > i {
                merged.append(word2[word2.index(word1.startIndex, offsetBy: i)])
            }
        }
        
        return merged
    }

    print(mergeAlternately("Mello", "Dani"))
