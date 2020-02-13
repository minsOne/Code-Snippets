/// reference: dotSwift 2020 - Tobias Due Munk - Prototyping Custom UI in SwiftUI

import SwiftUI

extension View {
    /// 조건 여부에 따라 transform 을 호출하여 View에 반영
    ///
    ///     var colorize: Bool = true
    ///     Text("Hello")
    ///       .if(colorize) { $0.background(Color.red) }
    ///
    /// - Parameters:
    ///   - conditional: transform 호출 여부를 결정
    ///   - transform: 매핑 closure. View를 transform 함.
    ///
    /// - Returns: 기존 View를 반환하거나 transformed View를 반환
    func `if`<T: View>(_ conditional: Bool, transform: (Self) -> T) -> some View {
        Group {
            if conditional {
                transform(self)
            } else {
                self
            }
        }
    }
}
