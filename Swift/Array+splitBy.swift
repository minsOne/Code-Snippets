/*
Array extension - Divided array by a certain size
Platform : iOS / OSX
Language : Swift 2.2
Required: iOS 7.0 and later
*/

extension Array {
    func splitBy(subSize: Int) -> [[Element]] {
        return 0.stride(to: self.count, by: subSize).map { startIndex in
            let endIndex = startIndex.advancedBy(subSize, limit: self.count)
            return Array(self[startIndex ..< endIndex])
        }
    }
}

// MARK: Use

// Output : [[0,0],[0,0],[0,0],[0,0],[0,0]]
print(Array(count: 10, repeatedValue: 0).splitBy(2))
