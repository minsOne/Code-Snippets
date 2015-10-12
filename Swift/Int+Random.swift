/*
Int extension - Random value
Platform : iOS / OSX
Language : Swift
Required: iOS 9.0 and later
*/

extension Int {
    func random() -> Int {
        return Int(arc4random_uniform(UInt32(self)))
    }
}

// MARK: Use
5.random()
4.random()