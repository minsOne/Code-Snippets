/*
UIView extension
Platform : iOS / OSX
Language : Swift 2.2
Required: iOS 7.0 and later
*/

// Handling scroll of UIScrollView  
protocol Scrollable {}
extension Scrollable where Self: UIScrollView {
    func stopScrolling() {
        let contentOffset = self.contentOffset
        self.setContentOffset(contentOffset, animated: false)
    }

    func moveToTop(animated animated: Bool) {
        self.setContentOffset(CGPointZero, animated: animated)
    }
}
extension UIScrollView: Scrollable {}


// Add SubView to ParentView with Autolayout
protocol Autolayout {}
extension Autolayout where Self: UIView {
    func addSubView(subView: UIView) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subView)

        var viewBindingsDict = [String: AnyObject]()
        viewBindingsDict["subView"] = subView

        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[subView]|",
            options: [], metrics: nil, views: viewBindingsDict))
        self.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[subView]|",
            options: [], metrics: nil, views: viewBindingsDict))
    }
}
extension UIView: Autolayout {}