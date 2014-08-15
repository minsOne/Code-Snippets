/*
 Creating GCD dispatch queue
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
 */

 #pragma mark - Method

dispatch_queue_t queue = dispatch_queue_create(<#const char *label#>, <#dispatch_queue_attr_t attr, Serial is NULL or Concurrent is DISPATCH_QUEUE_CONCURRENT#>);