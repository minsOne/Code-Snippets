/*
Array extension - clear highlight and selected state
Platform : iOS
Language : Swift
Required: iOS 7.0
*/

extension Array where Element: UIButton {
    func clearState() {
        self.forEach {
            $0.highlighted = false
            $0.selected = false
        }
    }
}

or

extension SequenceType where Generator.Element: UIButton {
    func clearState() {
        self.forEach {
            $0.highlighted = false
            $0.selected = false
        }
    }
}

// MARK: Use

let buttonArray = [UIButton(), UIButton(), UIButton()]
buttonArray.clearState()
