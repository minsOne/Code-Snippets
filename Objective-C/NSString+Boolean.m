/*
 Boolean function for NSString
 if variable is nil and we send message, it should return false.
 Then we just check anything.
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
 */


@implementation NSString (Boolean)

- (BOOL)isIgnoringCaseEqualToString:(NSString *)aString {
	return [self compare:aString options:NSCaseInsensitiveSearch] == NSOrderedSame;
}

- (BOOL)isTrue {
	return [self isIgnoringCaseEqualToString:@"true"];
}

- (BOOL)isEmpty {
	return (self.length == 0);
}

@end