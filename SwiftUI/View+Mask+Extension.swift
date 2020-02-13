/// reference: dotSwift 2020 - Tobias Due Munk - Prototyping Custom UI in SwiftUI

import SwiftUI

extension View {
	/// 해당 View에 masking을 합니다.
	///
	///     Text("Hello world").maskContent(using: Color.blue)
	///     // or
	///     Color.blue.mask(Text("Hello world"))
	///
	func maskContent<T: View>(using: T) -> some View {
		using.mask(self)
	}
}
