/*
Array extension - safely get array value 
Platform : iOS / OSX
Language : Swift
Required: iOS 9.0 and later
*/

extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}

// MARK: Use

let list = [1,2,3]
list[safe: 4] // nil
list[safe: 2] // 3