/*
Collection extension - seperate passed list and failed list
Platform : iOS / OSX
Language : Swift
Required: Swift 2.0 later
*/

extension CollectionType {
    public func filter(@noescape includeElement: (Self.Generator.Element) throws -> Bool) rethrows -> (passed: [Generator.Element], failed: [Generator.Element]) {
        var passed: [Generator.Element] = []
        var failed: [Generator.Element] = []
        try forEach {
            if try includeElement($0) {
                passed += [$0]
            } else {
                failed += [$0]
            }
        }
        return (passed, failed)
    }
}

