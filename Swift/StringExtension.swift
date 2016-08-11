/*
String extension - Convert NSString Method to Swift Extension
Platform : iOS / OSX
Language : Swift 2.2
Required: iOS 7.0 and later
*/

extension String {
  var lastPathComponent: String {
    get {
      return (self as NSString).lastPathComponent
    }
  }
  var pathExtension: String {
    get {
      return (self as NSString).pathExtension
    }
  }
  var stringByDeletingLastPathComponent: String {
    get {
      return (self as NSString).stringByDeletingLastPathComponent
    }
  }
  var stringByDeletingPathExtension: String {
    get {
      return (self as NSString).stringByDeletingPathExtension
    }
  }
  var pathComponents: [String] {
    get {
      return (self as NSString).pathComponents
    }
  }
  func stringByAppendingPathComponent(path: String) -> String {
    return (self as NSString).stringByAppendingPathComponent(path)
  }

  func stringByAppendingPathExtension(ext: String) -> String? {
    return (self as NSString).stringByAppendingPathExtension(ext)
  }

  var trim: String {
    get {
      return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
  }
}
