/*
 Boolean function for NSArray
 if variable is nil and we send message, it should return false.
 Then we just check length of NSArray
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
 */

@implementation NSArray (Boolean)

- (BOOL)isEmpty {
    return (self.count == 0);
}

@end

