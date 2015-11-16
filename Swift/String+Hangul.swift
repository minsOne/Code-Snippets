/*
String extension - Linear
Platform : iOS / OSX
Language : Swift
Required: iOS 9.0 and later
*/

extension String {
	func linearHangul() -> String {
		let hangle = [
			["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"],
			["ㅏ","ㅐ","ㅑ","ㅒ","ㅓ","ㅔ","ㅕ","ㅖ","ㅗ","ㅘ","ㅙ","ㅚ","ㅛ","ㅜ","ㅝ","ㅞ","ㅟ","ㅠ","ㅡ","ㅢ","ㅣ"],
			["","ㄱ","ㄲ","ㄳ","ㄴ","ㄵ","ㄶ","ㄷ","ㄹ","ㄺ","ㄻ","ㄼ","ㄽ","ㄾ","ㄿ","ㅀ","ㅁ","ㅂ","ㅄ","ㅅ","ㅆ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"]
		]

		return self.characters.reduce("") { result, char in
			if case let code = Int(String(char).unicodeScalars.reduce(0) {$0.0 + $0.1.value}) - 44032
				where code > -1 && code < 11172 {
					let choIdx = code / 21 / 28;
					let jungIdx = code % (21 * 28) / 28;
					let jongIdx = code % 28;
					return result + hangle[0][choIdx] + hangle[1][jungIdx] + hangle[2][jongIdx]
			}
			return result + String(char)
		}
	}
}

// MARK: Use
"한글AB세종".linearHangle()